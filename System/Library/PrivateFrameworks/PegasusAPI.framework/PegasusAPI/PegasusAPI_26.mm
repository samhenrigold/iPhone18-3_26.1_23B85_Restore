uint64_t sub_1B8F51DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_KnownFeedbackType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F51DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013FB8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51EC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackGrade.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F51F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B901397C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51FF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerEngagementEvent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F52044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013880();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ViewAppearEvent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F52174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90138D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52254@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ViewDisappearEvent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F522A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023F30();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F523A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TimingDataDictKeys.allCases.getter(a1);
  *a2 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_CommandType.init(rawValue:)(unint64_t *a1@<X8>, unint64_t a2@<X0>)
{
  v2 = 48;
  if (a2 != 50)
  {
    v2 = a2;
  }

  if (a2 < 0x30)
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CommandType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B967F848[result];
  }

  return result;
}

uint64_t sub_1B8F52424@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F52458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013B20();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52554@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CommandType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F52588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023EDC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52668@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F5269C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023E88();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5277C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F527B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023E34();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F528C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90136DC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F529A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosSuggestionType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F529D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013730();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52AB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_HideReason.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F52AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013784();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52BCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_MailSuggestionDataSources.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F52C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90137D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52CE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F52D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B901382C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52DF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EmbeddingStatusType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F52E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023DE0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52F24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ContactActionType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F52F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013ACC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CounterfactualError.allCases.getter(a1);
  *a2 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  if (!v3 & v2)
  {
    switch(a2)
    {
      case 0:
      case 1:
      case 4:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        break;
      case 2:
        a2 = 1;
        break;
      case 3:
        a2 = 2;
        break;
      case 5:
        a2 = 4;
        break;
      case 6:
        a2 = 5;
        break;
      case 12:
        a2 = 6;
        break;
      case 13:
        a2 = 7;
        break;
      case 14:
        a2 = 8;
        break;
      default:
        switch(a2)
        {
          case 62:
            a2 = 9;
            break;
          case 124:
            a2 = 10;
            break;
          case 125:
            a2 = 11;
            break;
          case 127:
            a2 = 12;
            break;
          case 201:
            a2 = 3;
            break;
        }

        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 172:
        a2 = 13;
        break;
      case 173:
        a2 = 14;
        break;
      case 174:
        a2 = 15;
        break;
      case 175:
        a2 = 16;
        break;
      case 176:
        a2 = 17;
        break;
      case 177:
        a2 = 18;
        break;
      case 178:
        a2 = 19;
        break;
      case 179:
        a2 = 20;
        break;
      case 180:
        a2 = 21;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B967F9D0[result];
  }

  return result;
}

uint64_t sub_1B8F53200@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013C1C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F53364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023D8C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53444@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SKStoreProductPageResult.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F53478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013CC4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53558@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SearchType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F5359C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013D6C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5367C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EntityType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F536B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013928();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53790@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SpotlightQueryIntentType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F537D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023D38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F538B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F538F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013DC0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F539D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosLibraryBucket.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F53A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013688();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53B08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosRetrievalBucket.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F53B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B901400C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53C1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_LookupHintRelevancy.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FlusherEndpoint.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B8F53C80@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_FlusherEndpoint.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023CE4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53D94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FlusherEndpoint.allCases.getter(a1);
  *a2 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_FeedbackType.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 'd':
      a2 = 45;
      break;
    case 'e':
      a2 = 46;
      break;
    case 'f':
      a2 = 47;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B967FA80[result];
  }

  return result;
}

uint64_t sub_1B8F53E44@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_FeedbackType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023C90();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53F74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F53FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023C3C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F54088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_LookupSelectionType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F540BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90140B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5419C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F541D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023BE8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F542B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PrivateRelayStatus.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NullValue.rawValue.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_805();
  }
}

uint64_t sub_1B8F5430C@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_NullValue.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F54340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023B94();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5443C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_NullValue.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F54470(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9014108();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F54550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CBAEngagementType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F545A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023B40();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5469C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_BundleIdentifier.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F546D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023AEC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F547B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_UserReportType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F547F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023A98();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F548D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_Client.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8F54934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023A44();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F54A14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackDeletionReason.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 16, v3);
  return *(v2 + 16);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_344_0();
  *(v1 + 80) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F54AD4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 16) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.cellRxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 24);
  *(v1 + 72) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.cellTxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_374_0();
  *(v1 + 72) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.connectAttempts.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 40);
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.connectSuccesses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 44);
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.minRtt.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxBytes.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  *(v1 + 72) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 64, v3);
  return *(v2 + 64);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  *(v1 + 72) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F54FD8()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 64) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxOutOfOrderBytes.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 72);
  *(v1 + 72) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F550D4()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 72) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 80, v3);
  return *(v2 + 80);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  *(v1 + 72) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F551F0()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 80) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txBytes.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 88, v3);
  return *(v2 + 88);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txBytes.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 88);
  *(v1 + 72) = *(v0 + 88);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5530C()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 88) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txPackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 96, v3);
  return *(v2 + 96);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txPackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  *(v1 + 72) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F55428()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 96) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 104, v3);
  return *(v2 + 104);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 104, v4);
  *(v5 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 104);
  *(v1 + 72) = *(v0 + 104);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F555A4()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 104) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.varRtt.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  *(v1 + 80) = *(v0 + 112);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 120, v3);
  return *(v2 + 120);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 120);
  *(v1 + 72) = *(v0 + 120);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5576C()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 120) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 128, v3);
  return *(v2 + 128);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  *(v1 + 72) = *(v0 + 128);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F55888()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 128) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 136, v3);
  return *(v2 + 136);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 136);
  *(v1 + 72) = *(v0 + 136);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F559A4()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 136) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 144, v3);
  return *(v2 + 144);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  *(v1 + 72) = *(v0 + 144);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F55AC0()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 144) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.statsType.getter()
{
  OUTLINED_FUNCTION_253_1();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 152, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Feedback_V2_TCPInfo.statsType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v8 + 152, v7);
  *(v8 + 152) = v2;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.statsType.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 152);
  v6 = *(v0 + 160);
  *(v1 + 48) = *(v0 + 152);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F55CA8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_TCPInfo.statsType.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
      OUTLINED_FUNCTION_475_0();
      swift_allocObject();
      OUTLINED_FUNCTION_40_0();
      sub_1B8FA9A40();
      OUTLINED_FUNCTION_168(v8);
    }

    OUTLINED_FUNCTION_59_3(v7 + 152);
    *(v7 + 152) = v3;
    *(v7 + 160) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 168, v3);
  return *(v2 + 168);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 168);
  *(v1 + 72) = *(v0 + 168);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F55DD4()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 168) = v2;

  free(v0);
}

void sub_1B8F55ECC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_NetworkTimingData.interfaceIdentifier.setter(v1, v2);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.interfaceIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  *(v1 + 72) = *(type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4) + 20);
  OUTLINED_FUNCTION_249_1();
  v5 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.getter()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);
  v2 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v2, v3);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_374_0();
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F560A8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v6, v7);
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.setter();
    v8 = v0[6];
    v9 = v0[7];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_163_1();
    v11 = *(v4 + v1);
    if ((v10 & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(v12);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B8FABCD4(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_59_3(v11 + 32);
    v8 = *(v11 + 32);
    v9 = *(v11 + 40);
    *(v11 + 32) = v3;
    *(v11 + 40) = v2;
  }

  sub_1B8D538A0(v8, v9);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_354_0(v1, v2);
  return *(v0 + 48);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_40_6(v3);
  *(v1 + 80) = v4;
  OUTLINED_FUNCTION_346_0();
  *(v1 + 84) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F561D8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(v7);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FABCD4(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionReused.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_40_6(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 49);
  *(v1 + 84) = *(v0 + 49);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F562D4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(v7);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FABCD4(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 49) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.startTimeCounts.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CBF90 != -1)
    {
      OUTLINED_FUNCTION_262_0(&qword_1ED9CBF90);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8C78, &qword_1B966F950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_124_1();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

void Apple_Parsec_Feedback_V2_NetworkTimingData.startTimeCounts.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CBF90 != -1)
    {
      OUTLINED_FUNCTION_262_0(&qword_1ED9CBF90);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8C78, &qword_1B966F950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_124_1();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.hasStartTimeCounts.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_NetworkTimingData.clearStartTimeCounts()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FABCD4(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.stopTimeCounts.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CBF90 != -1)
    {
      OUTLINED_FUNCTION_262_0(&qword_1ED9CBF90);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8C78, &qword_1B966F950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_124_1();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t sub_1B8F56850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B8FAC578();
  return a7(v7);
}

void Apple_Parsec_Feedback_V2_NetworkTimingData.stopTimeCounts.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CBF90 != -1)
    {
      OUTLINED_FUNCTION_262_0(&qword_1ED9CBF90);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8C78, &qword_1B966F950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_124_1();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8F56A60()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8FAC578();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B8FAC5C8();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.hasStopTimeCounts.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_NetworkTimingData.clearStopTimeCounts()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FABCD4(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

void sub_1B8F56D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_184_0();
  a21 = v26;
  a22 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v23;
  v35 = OUTLINED_FUNCTION_112();
  v37 = v36(v35);
  OUTLINED_FUNCTION_704_0(v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v23 + v25);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v40 = OUTLINED_FUNCTION_40_0();
    isUniquelyReferenced_nonNull_native = v31(v40);
    v39 = isUniquelyReferenced_nonNull_native;
    *(v34 + v25) = isUniquelyReferenced_nonNull_native;
  }

  v41 = (v39 + *v29);
  OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, &a10);
  *v41 = v24;
  v41[1] = v22;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionUuid.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8F56E80()
{
  v0 = OUTLINED_FUNCTION_428_0();
  v1(v0);
  OUTLINED_FUNCTION_478_0();
  OUTLINED_FUNCTION_6_2(v2);

  return OUTLINED_FUNCTION_288();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.networkProtocolName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.quicwhitelistedDomain.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_40_6(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCount.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F5718C()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_308_0(v4, v5);
  return *(v1 + v0);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCountW3C.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5729C()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_296_0();
  v6 = OUTLINED_FUNCTION_520_0();
  v7 = *(v5 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_519_0();
    v3(v8);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v2(v9);
    OUTLINED_FUNCTION_529_0(v10);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v7 + v1) = v4;
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.requestHeaderSize.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesDecoded.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesReceived.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseHeaderSize.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F57610()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_308_0(v4, v5);
  return *(v1 + v0);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.tfosuccess.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_40_6(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F576DC()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_296_0();
  v4 = *(v0 + 80);
  v5 = *(v0 + 72);
  v6 = *(v0 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v2(v9);
    OUTLINED_FUNCTION_529_0(v10);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v8 + v1) = v6;
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.timingDataInit.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  OUTLINED_FUNCTION_225_2(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v0 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectEnd.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupEnd.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.fetchStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectEnd.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.requestStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.requestEnd.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseEnd.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.secureConnectStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F58120@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.fallbackResultSection.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.fallbackResultSection.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_670_0(v2, v3, *(v1 + 64), a1);
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B8D525DC(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.getter()
{
  v1 = *(v0 + 64);
  if (v1 != 255 && (v1 & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_432();
    sub_1B8D52508(v2, v3, 0);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D525DC(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 64) = 0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  v3 = *(v2 + 64);
  if (v3 == 255 || (v3 & 1) != 0)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D52508(v6, v7, 0);
  }

  *v1 = v4;
  v1[1] = v5;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5840C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 64);
  if (a2)
  {

    v6 = OUTLINED_FUNCTION_543();
    sub_1B8D525DC(v6, v7, v5);
    *(v3 + 48) = v4;
    *(v3 + 56) = v2;
    *(v3 + 64) = 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_543();
    result = sub_1B8D525DC(v9, v10, v5);
    *(v3 + 48) = v4;
    *(v3 + 56) = v2;
    *(v3 + 64) = 0;
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.knownBundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1B8D525DC(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = 1;
  return result;
}

uint64_t (*Apple_Parsec_Feedback_V2_ResultSectionForFeedback.knownBundleIdentifier.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  if ((v4 & 1) == 0)
  {
    v2 = 0;
  }

  if (v4 == 255)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = (v4 == 255 || (v4 & 1) == 0) | v3 & 1;
  return sub_1B8F5855C;
}

uint64_t sub_1B8F5855C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1B8D525DC(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.titleButtonItem.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v8);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  OUTLINED_FUNCTION_199_2();
  v9 = OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = v1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = 0;
    OUTLINED_FUNCTION_826(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC06D0, &qword_1B966F958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.titleButtonItem.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAC06D0, &qword_1B966F958);
  OUTLINED_FUNCTION_48_5();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Feedback_V2_ButtonForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.titleButtonItem.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 48));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0xE000000000000000;
    *(v11 + 32) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D0, &qword_1B966F958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F588AC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06D0, &qword_1B966F958);
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_325_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06D0, &qword_1B966F958);
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xC000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 255;
  *(a1 + 68) = 0;
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.punchout.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v5);
  OUTLINED_FUNCTION_100_3();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_532_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.punchout.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = v1;
  *(a1 + 56) = -1;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  return OUTLINED_FUNCTION_690_0(v2);
}

void Apple_Parsec_Feedback_V2_ActionItemForFeedback.punchout.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v14);
  OUTLINED_FUNCTION_256_1(*(v15 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_310_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F58DB8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06D8, &qword_1B966F960);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_119_2();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06D8, &qword_1B966F960);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.hasPunchout.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v5);
  OUTLINED_FUNCTION_863();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_ActionItemForFeedback.clearPunchout()()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC06D8, &qword_1B966F960);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.topicIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t sub_1B8F59138()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8F591BC()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = v2;
  *(a1 + 88) = 0;
  *(a1 + 96) = v2;
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.name.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.urls.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_670_0(v2, v3, *(v1 + 56), a1);
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B8D525DC(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.getter()
{
  v1 = *(v0 + 56);
  if (v1 != 255 && (v1 & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_432();
    sub_1B8D52508(v2, v3, 0);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D525DC(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 56) = 0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  v3 = *(v2 + 56);
  if (v3 == 255 || (v3 & 1) != 0)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D52508(v6, v7, 0);
  }

  *v1 = v4;
  v1[1] = v5;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F59538(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 56);
  if (a2)
  {

    v6 = OUTLINED_FUNCTION_543();
    sub_1B8D525DC(v6, v7, v5);
    *(v3 + 40) = v4;
    *(v3 + 48) = v2;
    *(v3 + 56) = 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_543();
    result = sub_1B8D525DC(v9, v10, v5);
    *(v3 + 40) = v4;
    *(v3 + 48) = v2;
    *(v3 + 56) = 0;
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.knownBundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1B8D525DC(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = 1;
  return result;
}

uint64_t (*Apple_Parsec_Feedback_V2_PunchoutForFeedback.knownBundleIdentifier.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  if ((v4 & 1) == 0)
  {
    v2 = 0;
  }

  if (v4 == 255)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = (v4 == 255 || (v4 & 1) == 0) | v3 & 1;
  return sub_1B8F59688;
}

uint64_t sub_1B8F59688(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1B8D525DC(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F59788()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 16, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F597D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_SearchResultForFeedback.identifier.setter(v1, v2);
}

void sub_1B8F59854()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_11_13();
  v10 = v9(v8);
  v11 = OUTLINED_FUNCTION_216_1(v10);
  v13 = *(v1 + v3);
  if ((v11 & 1) == 0)
  {
    v7(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v5(v14);
    OUTLINED_FUNCTION_192_2(v15);
  }

  OUTLINED_FUNCTION_9_3(v13 + 16, v12);
  *(v13 + 16) = v2;
  *(v13 + 24) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.identifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  *(v1 + 72) = *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4) + 20);
  OUTLINED_FUNCTION_249_1();
  v5 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.topHit.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v3);
  OUTLINED_FUNCTION_21_8(v4);
  OUTLINED_FUNCTION_374_0();
  OUTLINED_FUNCTION_71_2(*(v0 + 32));
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.action.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_251_1(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_864();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_57(v0);
  if (v6)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    result = OUTLINED_FUNCTION_57(v0);
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC06E0, &qword_1B966F968);
    }
  }

  else
  {
    OUTLINED_FUNCTION_209_2();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.action.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E0, &qword_1B966F968);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_209_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.action.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149_1(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
    OUTLINED_FUNCTION_756();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06E0, &qword_1B966F968);
    }
  }

  else
  {
    OUTLINED_FUNCTION_209_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasAction.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E0, &qword_1B966F968);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.punchout.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.punchout.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149_1(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_310_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasPunchout.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearPunchout()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.type.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.localFeatures.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
    *a1 = sub_1B964C7B0();
    v10 = sub_1B964C7B0();
    a1[1] = v10;
    OUTLINED_FUNCTION_251_0(v10);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC06E8, &qword_1B966F970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.localFeatures.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E8, &qword_1B966F970);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_Struct.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_Value(v1);
  v4 = OUTLINED_FUNCTION_869(v2, MEMORY[0x1E69E6158], v3, MEMORY[0x1E69E6168]);
  *v0 = v4;
  v0[1] = OUTLINED_FUNCTION_869(v4, MEMORY[0x1E69E72F0], v5, MEMORY[0x1E69E7300]);
  type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.localFeatures.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_Struct(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
    *v10 = sub_1B964C7B0();
    v15 = sub_1B964C7B0();
    v10[1] = v15;
    OUTLINED_FUNCTION_280_0(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06E8, &qword_1B966F970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasLocalFeatures.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearLocalFeatures()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E8, &qword_1B966F970);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultType.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

double sub_1B8F5AA60()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_308_0(v4, v5);
  return *(v1 + v0);
}

void sub_1B8F5AAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_652_0();
  v9 = v8;
  OUTLINED_FUNCTION_12_8();
  v10 = v4;
  v12 = v11;
  v14 = v13(0);
  v15 = OUTLINED_FUNCTION_866(v14);
  v17 = *(v4 + v7);
  if ((v15 & 1) == 0)
  {
    v6(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_40_0();
    v17 = v5(v18);
    *(v10 + v7) = v17;
  }

  v19 = *v9;
  OUTLINED_FUNCTION_9_3(v17 + v19, v16);
  *(v17 + v19) = v12;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.rankingScore.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  OUTLINED_FUNCTION_225_2(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v0 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5AC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_296_0();
  v9 = *(v5 + 72);
  v10 = *(v5 + 88);
  v11 = *(v5 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v14);
    OUTLINED_FUNCTION_228_1(v15);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v13 + v6) = v9;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isStaticCorrection.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.queryID.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_838();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.intendedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.correctedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.completedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isLocalApplicationResult.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.publiclyIndexable.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.fbr.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.userInput.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isFuzzyMatch.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.doNotFold.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F5B97C()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_308_0(v4, v5);
  return *(v1 + v0);
}

void sub_1B8F5B9FC()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_353_0();
  v6 = OUTLINED_FUNCTION_313();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v3(v11);
    OUTLINED_FUNCTION_192_2(v12);
  }

  v13 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v13, v14);
  *(v10 + v2) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.blockID.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_838();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5BB10()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_296_0();
  v6 = OUTLINED_FUNCTION_592_0();
  v7 = *(v5 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_612_0();
    v3(v8);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v2(v9);
    OUTLINED_FUNCTION_529_0(v10);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v7 + v1) = v4;
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hashedIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_838();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleIdentifier.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_205_1();
  *(a1 + 20) = v3;
  OUTLINED_FUNCTION_610_0(*(v1 + v3));
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5BD8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleID.setter(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_611_0();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = OUTLINED_FUNCTION_543();
    sub_1B8D52508(v7, v8, 0);
  }

  *v1 = v5;
  v1[1] = v6;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.knownResultBundleID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  *(v1 + 12) = v2;
  OUTLINED_FUNCTION_360_0();
  OUTLINED_FUNCTION_514_0(v3);
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5BF4C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_205_1();
  v7 = *(v3 + v6) + *a1;
  v8 = *(v7 + 8);
  *a3 = *v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = *(v7 + 16);

  return a2();
}

uint64_t sub_1B8F5BFDC(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v3 + v4);
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B8FB2928(v12);
    OUTLINED_FUNCTION_665_0(v13);
  }

  v14 = v11 + *a2;
  v15 = *v14;
  v16 = *(v14 + 8);
  *v14 = v6;
  *(v14 + 8) = v7;
  v17 = *(v14 + 16);
  *(v14 + 16) = v8;

  return a3(v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleID.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_205_1();
  *(a1 + 20) = v3;
  OUTLINED_FUNCTION_610_0(*(v1 + v3));
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5C108(uint64_t a1, char a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(a1 + 16);
  if (a2)
  {
    v6 = OUTLINED_FUNCTION_461();
    v7(v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_297_0();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8FB2928(v8);
      OUTLINED_FUNCTION_73_2(v9);
    }

    v10 = OUTLINED_FUNCTION_609_0(*a3);
    *(v11 + 16) = v5;
    a4(v10);
    v12 = OUTLINED_FUNCTION_461();
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_297_0();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B8FB2928(v13);
      OUTLINED_FUNCTION_73_2(v14);
    }

    v12 = OUTLINED_FUNCTION_609_0(*a3);
    *(v15 + 16) = v5;
  }

  return a4(v12);
}

uint64_t sub_1B8F5C218(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_611_0();
  if (!v4 && (v3 & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_432();
    a2(v5);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8F5C280(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleIdentifier.setter(v1, v2, v3, v4);
}

uint64_t sub_1B8F5C2E0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  v10 = OUTLINED_FUNCTION_112();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v10);
  v12 = OUTLINED_FUNCTION_866(v11);
  v13 = *(v5 + v7);
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v14 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B8FB2928(v14);
    *(v9 + v7) = v13;
  }

  v15 = v13 + *a3;
  v16 = *v15;
  v17 = *(v15 + 8);
  *v15 = v6;
  *(v15 + 8) = v4;
  v18 = *(v15 + 16);
  *(v15 + 16) = 0;

  return a4(v16, v17, v18);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_611_0();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = OUTLINED_FUNCTION_543();
    sub_1B8D52508(v7, v8, 0);
  }

  *v1 = v5;
  v1[1] = v6;
  return OUTLINED_FUNCTION_542_0();
}

void sub_1B8F5C418(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_360_0();
  if (v3 == 255)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = (v3 == 255 || (v3 & 1) == 0) | v5 & 1;
}

uint64_t sub_1B8F5C494(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = v3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v10 = OUTLINED_FUNCTION_866(v9);
  v11 = *(v3 + v4);
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8FB2928(v12);
    *(v6 + v4) = v11;
  }

  v13 = v11 + *a2;
  v14 = *v13;
  v15 = *(v13 + 8);
  *v13 = v7;
  *(v13 + 8) = v8;
  v16 = *(v13 + 16);
  *(v13 + 16) = 1;

  return a3(v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.knownSectionBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  *(v1 + 12) = v2;
  OUTLINED_FUNCTION_360_0();
  OUTLINED_FUNCTION_514_0(v3);
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5C5B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8FB2928(v5);
    OUTLINED_FUNCTION_168(v6);
  }

  v7 = OUTLINED_FUNCTION_609_0(*a3);
  *(v8 + 16) = 1;

  return a4(v7);
}

double sub_1B8F5C66C@<D0>(void (*a1)(__int128 *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B8F5C6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void *))
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v11 = v8;
  a5(v10[0]);
  return a6(v10);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleID.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_205_1();
  *(a1 + 20) = v3;
  OUTLINED_FUNCTION_610_0(*(v1 + v3));
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5C7D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleIdentifier.setter(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_611_0();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = OUTLINED_FUNCTION_543();
    sub_1B8D52508(v7, v8, 0);
  }

  *v1 = v5;
  v1[1] = v6;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5C8C4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_461();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_461();
    return a3(v6);
  }
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.knownApplicationBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  *(v1 + 12) = v2;
  OUTLINED_FUNCTION_360_0();
  OUTLINED_FUNCTION_514_0(v3);
  return OUTLINED_FUNCTION_542_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.entityData.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  OUTLINED_FUNCTION_254_1(v5);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldUseCompactDisplay.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.noGoTakeover.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.preferTopPlatter.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.wasCompact.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.didTakeoverGo.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.usesCompactDisplay.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isInstantAnswer.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldAutoNavigate.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.card.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CardForFeedback.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  v1 = OUTLINED_FUNCTION_517_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v1);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.card.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149_1(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_280_0(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasCard.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearCard()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.inlineCard.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.inlineCard.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149_1(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_280_0(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasInlineCard.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearInlineCard()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t sub_1B8F5DA54@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v7);
  v8 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_521(v8, v13);
  OUTLINED_FUNCTION_466();
  sub_1B8F1B8B8();
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_29_14(v9);
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = 0;
    OUTLINED_FUNCTION_594_0();
    OUTLINED_FUNCTION_251_0(v11);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.compactCard.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.compactCard.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149_1(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_280_0(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasCompactCard.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearCompactCard()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.containsPersonalResult.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.didRerankPersonalResult.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F5E0DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_478_0();
  v5 = v3 + v4;
  result = OUTLINED_FUNCTION_6_2(v6);
  v8 = *(v5 + 8);
  *a2 = *v5;
  *(a2 + 8) = v8;
  return result;
}

void sub_1B8F5E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_184_0();
  a21 = v26;
  a22 = v27;
  v29 = v28;
  OUTLINED_FUNCTION_451_0();
  v30 = v22;
  v32 = *v31;
  v33 = *(v31 + 8);
  v35 = v34(0);
  OUTLINED_FUNCTION_704_0(v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v22 + v25);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v38 = OUTLINED_FUNCTION_40_0();
    v37 = v23(v38);
    *(v30 + v25) = v37;
  }

  v39 = v37 + *v29;
  OUTLINED_FUNCTION_18(v39, &a10);
  *v39 = v32;
  *(v39 + 8) = v33;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightIndexUsed.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5E2BC()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_296_0();
  v5 = *(v0 + 72);
  v6 = *(v0 + 84);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 84);
    v12 = *(v0 + 88);
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    isUniquelyReferenced_nonNull_native = v3(v13);
    v10 = isUniquelyReferenced_nonNull_native;
    *(v12 + v11) = isUniquelyReferenced_nonNull_native;
  }

  v14 = 48;
  if (v2)
  {
    v14 = 24;
  }

  v15 = v10 + *v1;
  OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, v0 + v14);
  *v15 = v5;
  *(v15 + 8) = v8;
  OUTLINED_FUNCTION_283();

  free(v16);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightIndexUsedReason.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightRankingSignals.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC06F8, &qword_1B966F980);
    }
  }

  else
  {
    OUTLINED_FUNCTION_316_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightRankingSignals.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F8, &qword_1B966F980);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightRankingSignals.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *(v10 + 20) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 40) = 1;
    *(v10 + 44) = 0;
    *(v10 + 48) = 0;
    *(v10 + 52) = 0;
    *(v10 + 56) = 0;
    *(v10 + 60) = 0;
    *(v10 + 64) = 0;
    *(v10 + 72) = 1;
    *(v10 + 76) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F8, &qword_1B966F980);
    }
  }

  else
  {
    OUTLINED_FUNCTION_316_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasCoreSpotlightRankingSignals.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearCoreSpotlightRankingSignals()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F8, &qword_1B966F980);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailRankingSignals.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BF0 != -1)
    {
      OUTLINED_FUNCTION_606_0(&qword_1EBAB6BF0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC0700, &qword_1B966F988);
    }
  }

  else
  {
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailRankingSignals.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0700, &qword_1B966F988);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_315_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailRankingSignals.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BF0 != -1)
    {
      OUTLINED_FUNCTION_606_0(&qword_1EBAB6BF0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC0700, &qword_1B966F988);
    }
  }

  else
  {
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasMailRankingSignals.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearMailRankingSignals()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0700, &qword_1B966F988);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailResultDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_199_2();
  v9 = OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = v1;
    *(a1 + 12) = 0;
    OUTLINED_FUNCTION_826(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC0708, &qword_1B966F990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_314_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailResultDetails.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0708, &qword_1B966F990);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 12) = 0;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailResultDetails.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
    *(v10 + 12) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0708, &qword_1B966F990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_314_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasMailResultDetails.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearMailResultDetails()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0708, &qword_1B966F990);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isVideoAssetFromPhotos.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isMailInstantAnswerUpdated.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfSectionWhenRanked.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_42_5(v2);
  *(v0 + 84) = v3;
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfResultInSectionWhenRanked.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_42_5(v2);
  *(v0 + 84) = v3;
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.safariAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = v1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v2, &unk_1EBAC0710, &qword_1B966F998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_313_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.safariAttributes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0710, &qword_1B966F998);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_313_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SafariAttributes.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.safariAttributes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBAC0710, &qword_1B966F998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_313_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasSafariAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearSafariAttributes()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0710, &qword_1B966F998);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasAppTopHitShortcut_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAttributes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_208_1();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAttributes.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  OUTLINED_FUNCTION_752();
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  return OUTLINED_FUNCTION_723_0(v1);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAttributes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149_1(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  v13 = OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_740(v13);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0718, &qword_1B966F9A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_208_1();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasPhotosAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearPhotosAttributes()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAggregatedInfo.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_702_0();
    OUTLINED_FUNCTION_826(v7);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &unk_1EBAC0720, &qword_1B966F9A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAggregatedInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0720, &qword_1B966F9A8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_535_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_312_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_724(v2);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  return OUTLINED_FUNCTION_101_2(v3);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAggregatedInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_149_1(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_700_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &unk_1EBAC0720, &qword_1B966F9A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasPhotosAggregatedInfo.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearPhotosAggregatedInfo()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0720, &qword_1B966F9A8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_536_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8FB2928(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyQueryCompletionMatched.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

float Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyNavigationIntentScore.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_205_1();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore;
  OUTLINED_FUNCTION_6_2(v2);
  return *v4;
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyNavigationIntentScore.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_5();
  a19 = v22;
  a20 = v24;
  v25 = OUTLINED_FUNCTION_235_2();
  v26 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v25);
  v27 = OUTLINED_FUNCTION_728(v26);
  v28 = *(v20 + v21);
  if ((v27 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v29 = OUTLINED_FUNCTION_40_0();
    v30 = sub_1B8FB2928(v29);
    OUTLINED_FUNCTION_16_3(v30);
  }

  v31 = (v28 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_18(v28 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore, &a10);
  *v31 = v23;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyNavigationIntentScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42_5(v3);
  *(v1 + 84) = v4;
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F606C0()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4();
  v5 = OUTLINED_FUNCTION_744();
  v6 = *(v3 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FB2928(v7);
    v5 = OUTLINED_FUNCTION_15(v8);
  }

  v9 = 48;
  if (v2)
  {
    v9 = 24;
  }

  v10 = (v6 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_211_0(v5, v0 + v9);
  *v10 = v4;
  OUTLINED_FUNCTION_31_4();

  free(v11);
}

void sub_1B8F607FC()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  v5 = v2;
  v7 = *v0;
  v6 = v0[1];
  if (v0[2])
  {
    if (*(v1 + 16))
    {
      v8 = OUTLINED_FUNCTION_74_7();
      v4(v8);
      v9 = OUTLINED_FUNCTION_186();
      v10 = (v4)(v9);
      v11 = Apple_Parsec_Feedback_V2_FeedbackDeletionReason.rawValue.getter(v10);
      Apple_Parsec_Feedback_V2_FeedbackDeletionReason.rawValue.getter(v11);
      goto LABEL_7;
    }

LABEL_6:
    v12 = OUTLINED_FUNCTION_186();
    v5(v12);
    v13 = OUTLINED_FUNCTION_74_7();
    v4(v13);
    v14 = OUTLINED_FUNCTION_186();
    v4(v14);
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {

    goto LABEL_6;
  }

  v15 = *v0;
  if (v7 == *v1 && v6 == *(v1 + 8))
  {
    (v2)(v15, v6, 0);
    v21 = OUTLINED_FUNCTION_74_7();
    v5(v21);
    v22 = OUTLINED_FUNCTION_74_7();
    v4(v22);
    v20 = OUTLINED_FUNCTION_74_7();
  }

  else
  {
    sub_1B964C9F0();
    v17 = OUTLINED_FUNCTION_186();
    v5(v17);
    v18 = OUTLINED_FUNCTION_74_7();
    v5(v18);
    v19 = OUTLINED_FUNCTION_74_7();
    v4(v19);
    v20 = OUTLINED_FUNCTION_186();
  }

  v4(v20);
LABEL_7:
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAttributes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_SafariAttributes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F60CE8()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8F60D6C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 16, v1);
  return *(v0 + 16);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 16, v4);
  *(v5 + 16) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_13(v3);
  *(v1 + 80) = v4;
  OUTLINED_FUNCTION_249_1();
  *(v1 + 84) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F60F0C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 16) = v3;

  free(v1);
}

uint64_t sub_1B8F60FA8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 24, v3);
  return *(v0 + 24);
}

void sub_1B8F6102C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_271_1();
  v5 = OUTLINED_FUNCTION_65_3();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_216_1(v7);
  v10 = *(v1 + v4);
  if ((v8 & 1) == 0)
  {
    v11 = v3(0);
    OUTLINED_FUNCTION_693_0(v11);
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v2(v12);
    OUTLINED_FUNCTION_665_0(v13);
  }

  OUTLINED_FUNCTION_9_3(v10 + 24, v9);
  *(v10 + 24) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numEngagements.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v4);
  OUTLINED_FUNCTION_225_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 24);
  *(v1 + 72) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F61134()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_168_3();
  v5 = OUTLINED_FUNCTION_592_0();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_612_0();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693_0(v8);
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529_0(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 24) = v3;
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t sub_1B8F611D8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 32, v3);
  return *(v0 + 32);
}

void sub_1B8F6125C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_271_1();
  v5 = OUTLINED_FUNCTION_65_3();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_216_1(v7);
  v10 = *(v1 + v4);
  if ((v8 & 1) == 0)
  {
    v11 = v3(0);
    OUTLINED_FUNCTION_693_0(v11);
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v2(v12);
    OUTLINED_FUNCTION_665_0(v13);
  }

  OUTLINED_FUNCTION_9_3(v10 + 32, v9);
  *(v10 + 32) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numDaysEngagedLast30Days.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v4);
  OUTLINED_FUNCTION_225_2(v5);
  OUTLINED_FUNCTION_374_0();
  *(v1 + 72) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F61360()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_168_3();
  v5 = OUTLINED_FUNCTION_592_0();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_612_0();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693_0(v8);
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529_0(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 32) = v3;
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t sub_1B8F61404()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 40, v3);
  return *(v0 + 40);
}

void sub_1B8F61488()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_271_1();
  v5 = OUTLINED_FUNCTION_65_3();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_216_1(v7);
  v10 = *(v1 + v4);
  if ((v8 & 1) == 0)
  {
    v11 = v3(0);
    OUTLINED_FUNCTION_693_0(v11);
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v2(v12);
    OUTLINED_FUNCTION_665_0(v13);
  }

  OUTLINED_FUNCTION_9_3(v10 + 40, v9);
  *(v10 + 40) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast7Days.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 40);
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F61588()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_168_3();
  v5 = OUTLINED_FUNCTION_520_0();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_519_0();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693_0(v8);
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529_0(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 40) = v3;
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t sub_1B8F6162C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 44, v3);
  return *(v0 + 44);
}

void sub_1B8F616B0()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_271_1();
  v5 = OUTLINED_FUNCTION_65_3();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_216_1(v7);
  v10 = *(v1 + v4);
  if ((v8 & 1) == 0)
  {
    v11 = v3(0);
    OUTLINED_FUNCTION_693_0(v11);
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v2(v12);
    OUTLINED_FUNCTION_665_0(v13);
  }

  OUTLINED_FUNCTION_9_3(v10 + 44, v9);
  *(v10 + 44) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast14Days.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 44);
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F617B0()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_168_3();
  v5 = OUTLINED_FUNCTION_520_0();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_519_0();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693_0(v8);
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529_0(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 44) = v3;
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t sub_1B8F61854()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_354_0(v3, v4);
  return *(v0 + 48);
}

void sub_1B8F618D0()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_271_1();
  v5 = OUTLINED_FUNCTION_65_3();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_216_1(v7);
  v10 = *(v1 + v4);
  if ((v8 & 1) == 0)
  {
    v11 = v3(0);
    OUTLINED_FUNCTION_693_0(v11);
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v2(v12);
    OUTLINED_FUNCTION_665_0(v13);
  }

  OUTLINED_FUNCTION_9_3(v10 + 48, v9);
  *(v10 + 48) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast21Days.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F619D0()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_168_3();
  v5 = OUTLINED_FUNCTION_520_0();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_519_0();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693_0(v8);
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529_0(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v3;
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast30Days.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 52, v1);
  return *(v0 + 52);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast30Days.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 52, v4);
  *(v5 + 52) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast30Days.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 52);
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F61B4C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 52) = v3;

  free(v1);
}

uint64_t sub_1B8F61BE8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 56, v3);
  return *(v0 + 56);
}

void sub_1B8F61C6C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_271_1();
  v5 = OUTLINED_FUNCTION_65_3();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_216_1(v7);
  v10 = *(v1 + v4);
  if ((v8 & 1) == 0)
  {
    v11 = v3(0);
    OUTLINED_FUNCTION_693_0(v11);
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v2(v12);
    OUTLINED_FUNCTION_665_0(v13);
  }

  OUTLINED_FUNCTION_9_3(v10 + 56, v9);
  *(v10 + 56) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.daysSinceReceipt.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v4);
  OUTLINED_FUNCTION_225_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  *(v1 + 72) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F61D74()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_168_3();
  v5 = OUTLINED_FUNCTION_592_0();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_612_0();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693_0(v8);
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529_0(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 56) = v3;
  OUTLINED_FUNCTION_283();

  free(v11);
}

void Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.l1Score.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FBDB18(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 64, v6);
  *(v7 + 64) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.l1Score.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F61EDC()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4();
  v3 = OUTLINED_FUNCTION_744();
  v4 = *(v1 + v0);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8FBDB18(v5);
    OUTLINED_FUNCTION_15(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v4 + 64) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v7);
}

void Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.l2Score.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FBDB18(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 68, v6);
  *(v7 + 68) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.l2Score.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 68);
  *(v1 + 80) = *(v0 + 68);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F62040()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4();
  v3 = OUTLINED_FUNCTION_744();
  v4 = *(v1 + v0);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8FBDB18(v5);
    OUTLINED_FUNCTION_15(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v4 + 68) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isFlagged.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 72, v1);
  return *(v0 + 72);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isFlagged.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 72, v4);
  *(v5 + 72) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isFlagged.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_13(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 72);
  *(v1 + 84) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F621C0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 72) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isRepliedTo.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 73, v4);
  *(v5 + 73) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isRepliedTo.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_13(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 73);
  *(v1 + 84) = *(v0 + 73);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F62320(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 73) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSemanticMatch.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 74, v1);
  return *(v0 + 74);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSemanticMatch.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 74, v4);
  *(v5 + 74) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSemanticMatch.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_13(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 74);
  *(v1 + 84) = *(v0 + 74);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6249C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 74) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSyntacticMatch.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 75, v1);
  return *(v0 + 75);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSyntacticMatch.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 75, v4);
  *(v5 + 75) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSyntacticMatch.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_13(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 75);
  *(v1 + 84) = *(v0 + 75);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F62618(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 75) = v3;

  free(v1);
}

void Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.semanticScore.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FBDB18(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 76, v6);
  *(v7 + 76) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.semanticScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 76);
  *(v1 + 80) = *(v0 + 76);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F62778()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4();
  v3 = OUTLINED_FUNCTION_744();
  v4 = *(v1 + v0);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8FBDB18(v5);
    OUTLINED_FUNCTION_15(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v4 + 76) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v7);
}

void Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.syntacticScore.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FBDB18(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 80, v6);
  *(v7 + 80) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.syntacticScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  *(v1 + 80) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F628DC()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4();
  v3 = OUTLINED_FUNCTION_744();
  v4 = *(v1 + v0);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8FBDB18(v5);
    OUTLINED_FUNCTION_15(v6);
  }

  OUTLINED_FUNCTION_11_4();
  *(v4 + 80) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 84, v4);
  *(v5 + 84) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 84);
  *(v1 + 80) = *(v0 + 84);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F62A38(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 84) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 88, v1);
  return *(v0 + 88);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 88, v4);
  *(v5 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 88);
  *(v1 + 80) = *(v0 + 88);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F62BAC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 88) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 92, v1);
  return *(v0 + 92);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 92, v4);
  *(v5 + 92) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 92);
  *(v1 + 80) = *(v0 + 92);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F62D20(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 92) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 96, v1);
  return *(v0 + 96);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 96, v4);
  *(v5 + 96) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  *(v1 + 80) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F62E94(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 96) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 100, v1);
  return *(v0 + 100);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 100, v4);
  *(v5 + 100) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 100);
  *(v1 + 80) = *(v0 + 100);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F63008(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 100) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 104, v1);
  return *(v0 + 104);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 104, v4);
  *(v5 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 104);
  *(v1 + 80) = *(v0 + 104);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6317C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 104) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 108, v1);
  return *(v0 + 108);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 108, v4);
  *(v5 + 108) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 108);
  *(v1 + 80) = *(v0 + 108);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F632F0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 108) = v3;

  free(v1);
}

uint64_t sub_1B8F6338C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 112, v3);
  return *(v0 + 112);
}

void sub_1B8F63410()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_271_1();
  v5 = OUTLINED_FUNCTION_65_3();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_216_1(v7);
  v10 = *(v1 + v4);
  if ((v8 & 1) == 0)
  {
    v11 = v3(0);
    OUTLINED_FUNCTION_693_0(v11);
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v2(v12);
    OUTLINED_FUNCTION_665_0(v13);
  }

  OUTLINED_FUNCTION_9_3(v10 + 112, v9);
  *(v10 + 112) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  *(v1 + 80) = *(v0 + 112);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F63510()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_168_3();
  v5 = OUTLINED_FUNCTION_520_0();
  v6 = *(v4 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_519_0();
    v8 = v2(v7);
    OUTLINED_FUNCTION_693_0(v8);
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v1(v9);
    OUTLINED_FUNCTION_529_0(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 112) = v3;
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 116, v1);
  return *(v0 + 116);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 116, v4);
  *(v5 + 116) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 116);
  *(v1 + 80) = *(v0 + 116);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6368C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 116) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 120, v1);
  return *(v0 + 120);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 120, v4);
  *(v5 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 120);
  *(v1 + 80) = *(v0 + 120);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F63800(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 120) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 124, v1);
  return *(v0 + 124);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 124, v4);
  *(v5 + 124) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 124);
  *(v1 + 80) = *(v0 + 124);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F63974(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 124) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 128, v1);
  return *(v0 + 128);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 128, v4);
  *(v5 + 128) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  *(v1 + 80) = *(v0 + 128);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F63AE8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 128) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 132, v1);
  return *(v0 + 132);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 132, v4);
  *(v5 + 132) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 132);
  *(v1 + 80) = *(v0 + 132);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F63C5C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 132) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 136, v1);
  return *(v0 + 136);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 136, v4);
  *(v5 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 136);
  *(v1 + 80) = *(v0 + 136);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F63DD0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 136) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 140, v1);
  return *(v0 + 140);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 140, v4);
  *(v5 + 140) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 140);
  *(v1 + 80) = *(v0 + 140);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F63F44(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 140) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 144, v1);
  return *(v0 + 144);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 144, v4);
  *(v5 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  *(v1 + 80) = *(v0 + 144);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F640B8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 144) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 148, v1);
  return *(v0 + 148);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 148, v4);
  *(v5 + 148) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 148);
  *(v1 + 80) = *(v0 + 148);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6422C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 148) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInSubject.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 152, v1);
  return *(v0 + 152);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 152, v4);
  *(v5 + 152) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 152);
  *(v1 + 80) = *(v0 + 152);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F643A0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 152) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 156, v1);
  return *(v0 + 156);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 156, v4);
  *(v5 + 156) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 156);
  *(v1 + 80) = *(v0 + 156);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F64514(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 156) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 160, v1);
  return *(v0 + 160);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 160, v4);
  *(v5 + 160) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  *(v1 + 80) = *(v0 + 160);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F64688(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 160) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 164, v1);
  return *(v0 + 164);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 164, v4);
  *(v5 + 164) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 164);
  *(v1 + 80) = *(v0 + 164);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F647FC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 164) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 168, v1);
  return *(v0 + 168);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 168, v4);
  *(v5 + 168) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 168);
  *(v1 + 80) = *(v0 + 168);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F64970(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 168) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 172, v1);
  return *(v0 + 172);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 172, v4);
  *(v5 + 172) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 172);
  *(v1 + 80) = *(v0 + 172);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F64AE4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 172) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 176, v1);
  return *(v0 + 176);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 176, v4);
  *(v5 + 176) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 176);
  *(v1 + 80) = *(v0 + 176);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F64C58(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 176) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 180, v1);
  return *(v0 + 180);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 180, v4);
  *(v5 + 180) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 180);
  *(v1 + 80) = *(v0 + 180);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F64DCC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 180) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 184, v1);
  return *(v0 + 184);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 184, v4);
  *(v5 + 184) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 184);
  *(v1 + 80) = *(v0 + 184);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F64F40(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 184) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 188, v1);
  return *(v0 + 188);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 188, v4);
  *(v5 + 188) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 188);
  *(v1 + 80) = *(v0 + 188);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F650B4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 188) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 192, v1);
  return *(v0 + 192);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 192, v4);
  *(v5 + 192) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 192);
  *(v1 + 80) = *(v0 + 192);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F65228(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 192) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 196, v1);
  return *(v0 + 196);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 196, v4);
  *(v5 + 196) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 196);
  *(v1 + 80) = *(v0 + 196);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6539C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 196) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 200, v1);
  return *(v0 + 200);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 200, v4);
  *(v5 + 200) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 200);
  *(v1 + 80) = *(v0 + 200);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F65510(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 200) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 204, v1);
  return *(v0 + 204);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 204, v4);
  *(v5 + 204) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 204);
  *(v1 + 80) = *(v0 + 204);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F65684(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 204) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 208, v1);
  return *(v0 + 208);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 208, v4);
  *(v5 + 208) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 208);
  *(v1 + 80) = *(v0 + 208);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F657F8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 208) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 212, v1);
  return *(v0 + 212);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 212, v4);
  *(v5 + 212) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 212);
  *(v1 + 80) = *(v0 + 212);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6596C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 212) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 216, v1);
  return *(v0 + 216);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 216, v4);
  *(v5 + 216) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 216);
  *(v1 + 80) = *(v0 + 216);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F65AE0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 216) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 220, v1);
  return *(v0 + 220);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 220, v4);
  *(v5 + 220) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 220);
  *(v1 + 80) = *(v0 + 220);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F65C54(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 220) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 224, v1);
  return *(v0 + 224);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 224, v4);
  *(v5 + 224) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 224);
  *(v1 + 80) = *(v0 + 224);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F65DC8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 224) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 228, v1);
  return *(v0 + 228);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 228, v4);
  *(v5 + 228) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 228);
  *(v1 + 80) = *(v0 + 228);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F65F3C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 228) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 232, v1);
  return *(v0 + 232);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 232, v4);
  *(v5 + 232) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 232);
  *(v1 + 80) = *(v0 + 232);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F660B0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 232) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 236, v1);
  return *(v0 + 236);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 236, v4);
  *(v5 + 236) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 236);
  *(v1 + 80) = *(v0 + 236);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F66224(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 236) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 240, v1);
  return *(v0 + 240);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 240, v4);
  *(v5 + 240) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 240);
  *(v1 + 80) = *(v0 + 240);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F66398(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 240) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 244, v1);
  return *(v0 + 244);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 244, v4);
  *(v5 + 244) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 244);
  *(v1 + 80) = *(v0 + 244);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6650C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 244) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 248, v1);
  return *(v0 + 248);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 248, v4);
  *(v5 + 248) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 248);
  *(v1 + 80) = *(v0 + 248);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F66680(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 248) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 252, v1);
  return *(v0 + 252);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 252, v4);
  *(v5 + 252) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 252);
  *(v1 + 80) = *(v0 + 252);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F667F4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 252) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 256, v1);
  return *(v0 + 256);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 256, v4);
  *(v5 + 256) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 256);
  *(v1 + 80) = *(v0 + 256);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F66968(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 256) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 260, v1);
  return *(v0 + 260);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 260, v4);
  *(v5 + 260) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 260);
  *(v1 + 80) = *(v0 + 260);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F66ADC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 260) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 264, v1);
  return *(v0 + 264);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 264, v4);
  *(v5 + 264) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 264);
  *(v1 + 80) = *(v0 + 264);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F66C50(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 264) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 268, v1);
  return *(v0 + 268);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 268, v4);
  *(v5 + 268) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 268);
  *(v1 + 80) = *(v0 + 268);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F66DC4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 268) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 272, v1);
  return *(v0 + 272);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 272, v4);
  *(v5 + 272) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 272);
  *(v1 + 80) = *(v0 + 272);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F66F38(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 272) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 276, v1);
  return *(v0 + 276);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 276, v4);
  *(v5 + 276) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 276);
  *(v1 + 80) = *(v0 + 276);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F670AC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 276) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 280, v1);
  return *(v0 + 280);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 280, v4);
  *(v5 + 280) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 280);
  *(v1 + 80) = *(v0 + 280);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F67220(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 280) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 284, v1);
  return *(v0 + 284);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 284, v4);
  *(v5 + 284) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 284);
  *(v1 + 80) = *(v0 + 284);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F67394(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 284) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 288, v1);
  return *(v0 + 288);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 288, v4);
  *(v5 + 288) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 288);
  *(v1 + 80) = *(v0 + 288);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F67508(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 288) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 292, v1);
  return *(v0 + 292);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 292, v4);
  *(v5 + 292) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 292);
  *(v1 + 80) = *(v0 + 292);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6767C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 292) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentNames.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4(v0 + 296, v1);
  return *(v0 + 296);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentNames.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 296, v4);
  *(v5 + 296) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentNames.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0(v0 + 296);
  *(v1 + 80) = *(v0 + 296);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F677F0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 296) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F67C40()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8F67CC4()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_Feedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_370_0(a1);
  *(v1 + 17) = 0;
  *(v1 + 19) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = 0;
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(v0);
  return OUTLINED_FUNCTION_25();
}