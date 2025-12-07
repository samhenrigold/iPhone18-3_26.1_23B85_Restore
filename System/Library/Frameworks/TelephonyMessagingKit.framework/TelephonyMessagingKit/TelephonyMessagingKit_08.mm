ValueMetadata *Messaging.MessageID.metaType.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = &type metadata for SMSResultNotification;
      sub_1E4B84EB8();
      return v1;
    case 2:
      v1 = &type metadata for MMSResultNotification;
      sub_1E4B0DCD4();
      return v1;
    case 3:
      v1 = type metadata accessor for SMSReceivedNotification(0);
      v2 = &qword_1ECF94880;
      v3 = type metadata accessor for SMSReceivedNotification;
      v4 = &protocol conformance descriptor for SMSReceivedNotification;
      goto LABEL_42;
    case 4:
      v1 = type metadata accessor for MMSReceivedNotification(0);
      v2 = &qword_1ECF94888;
      v3 = type metadata accessor for MMSReceivedNotification;
      v4 = &protocol conformance descriptor for MMSReceivedNotification;
      goto LABEL_42;
    case 5:
      v1 = &type metadata for MMSRetrieveRequest;
      sub_1E4B1EC54();
      return v1;
    case 6:
      v1 = &type metadata for SendMMSRequest;
      sub_1E4B15148();
      return v1;
    case 7:
      v1 = &type metadata for ServiceStatusRequest;
      sub_1E4B3A788();
      return v1;
    case 8:
      v1 = &type metadata for ServiceStatusNotification;
      sub_1E4B8519C();
      return v1;
    case 9:
      v1 = type metadata accessor for RCSSendRequest(0);
      v2 = &unk_1EE2BDED0;
      v3 = type metadata accessor for RCSSendRequest;
      v4 = &protocol conformance descriptor for RCSSendRequest;
      goto LABEL_42;
    case 0xA:
      v1 = type metadata accessor for RCSReceivedNotification(0);
      v2 = &qword_1ECF94878;
      v3 = type metadata accessor for RCSReceivedNotification;
      v4 = &protocol conformance descriptor for RCSReceivedNotification;
      goto LABEL_42;
    case 0xB:
      v1 = &type metadata for RCSReceiveRequest;
      sub_1E4B85918();
      return v1;
    case 0xC:
      v1 = &type metadata for RCSResultNotification;
      sub_1E4B72230();
      return v1;
    case 0xD:
      v1 = &type metadata for RCSCapabilityDiscoveryRequest;
      sub_1E4B9E644();
      return v1;
    case 0xE:
      v1 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
      v2 = &qword_1ECF95F80;
      v3 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification;
      v4 = &protocol conformance descriptor for RCSCapabilityDiscoveryResponseNotification;
      goto LABEL_42;
    case 0xF:
      v1 = type metadata accessor for RCSCapabilityDiscoveryNotification(0);
      v2 = &qword_1ECF95F48;
      v3 = type metadata accessor for RCSCapabilityDiscoveryNotification;
      v4 = &protocol conformance descriptor for RCSCapabilityDiscoveryNotification;
      goto LABEL_42;
    case 0x10:
      v1 = &type metadata for RCSCapabilitiesUpdatedNotification;
      sub_1E4B84D44();
      return v1;
    case 0x11:
      v1 = &type metadata for RCSSendDispositionRequest;
      sub_1E4B44B18();
      return v1;
    case 0x12:
      v1 = &type metadata for RCSGroupChatMutationNotification;
      sub_1E4B1C750();
      return v1;
    case 0x13:
      v1 = &type metadata for RCSGroupChatMutationResponseNotification;
      sub_1E4B1C600();
      return v1;
    case 0x14:
      v1 = &type metadata for RCSGroupChatAddParticipantsRequest;
      sub_1E4B1BF70();
      return v1;
    case 0x15:
      v1 = &type metadata for RCSGroupChatRemoveParticipantsRequest;
      sub_1E4B1C0C0();
      return v1;
    case 0x16:
      v1 = &type metadata for RCSGroupChatChangeSubjectRequest;
      sub_1E4B1C210();
      return v1;
    case 0x17:
      v1 = &type metadata for RCSGroupChatLeaveRequest;
      sub_1E4B1C360();
      return v1;
    case 0x18:
      v1 = &type metadata for RCSGroupChatCreateRequest;
      sub_1E4B1C4B0();
      return v1;
    case 0x19:
      v1 = type metadata accessor for RCSSendSuggestionResponseRequest(0);
      v2 = &qword_1EE2BD990;
      v3 = type metadata accessor for RCSSendSuggestionResponseRequest;
      v4 = &protocol conformance descriptor for RCSSendSuggestionResponseRequest;
      goto LABEL_42;
    case 0x1A:
      v1 = type metadata accessor for SMSReportSpamRequest(0);
      v2 = &qword_1EE2BDBE0;
      v3 = type metadata accessor for SMSReportSpamRequest;
      v4 = &protocol conformance descriptor for SMSReportSpamRequest;
      goto LABEL_42;
    case 0x1B:
      v1 = type metadata accessor for MMSReportSpamRequest(0);
      v2 = &qword_1EE2BDD38;
      v3 = type metadata accessor for MMSReportSpamRequest;
      v4 = &protocol conformance descriptor for MMSReportSpamRequest;
      goto LABEL_42;
    case 0x1C:
      v1 = type metadata accessor for RCSReportSpamRequest(0);
      v2 = &unk_1EE2BDC90;
      v3 = type metadata accessor for RCSReportSpamRequest;
      v4 = &protocol conformance descriptor for RCSReportSpamRequest;
      goto LABEL_42;
    case 0x1D:
      v1 = &type metadata for RCSReportSpamResultNotification;
      sub_1E4B84488();
      return v1;
    case 0x1E:
      v1 = &type metadata for MMSConfigurationRetrieveRequest;
      sub_1E4B006AC();
      return v1;
    case 0x1F:
      v1 = &type metadata for CriticalMessageNotification;
      sub_1E4B484F0();
      return v1;
    case 0x20:
      v1 = &type metadata for RCSChatbotReadCachedRenderInformationRequest;
      sub_1E4B9E5F0();
      return v1;
    case 0x21:
      v1 = &type metadata for RCSChatbotFetchRenderInformationRequest;
      sub_1E4B9E59C();
      return v1;
    case 0x22:
      v1 = type metadata accessor for RCSChatbotRenderInformationResponse(0);
      v2 = &unk_1ECF95F28;
      v3 = type metadata accessor for RCSChatbotRenderInformationResponse;
      v4 = &protocol conformance descriptor for RCSChatbotRenderInformationResponse;
      goto LABEL_42;
    case 0x23:
      v1 = &type metadata for RCSRevokeMessageRequest;
      sub_1E4B967F8();
      return v1;
    case 0x24:
      v1 = &type metadata for RCSRevokeMessageResponseNotification;
      sub_1E4B84334();
      return v1;
    case 0x25:
      v1 = &type metadata for RCSConfigurationRequest;
      sub_1E4B93E28();
      return v1;
    case 0x26:
      v1 = &type metadata for RCSSendDeviceSpecificsRequest;
      sub_1E4AE31BC();
      return v1;
    case 0x27:
      v1 = &type metadata for CarrierMessagingCapabilityRequest;
      sub_1E4B39064();
      return v1;
    default:
      v1 = type metadata accessor for SendSMSRequest(0);
      v2 = &qword_1EE2BDE10;
      v3 = type metadata accessor for SendSMSRequest;
      v4 = &protocol conformance descriptor for SendSMSRequest;
LABEL_42:
      sub_1E4B9E698(v2, v3, v4);
      return v1;
  }
}

unint64_t sub_1E4B9E59C()
{
  result = qword_1EE2BD8B8;
  if (!qword_1EE2BD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD8B8);
  }

  return result;
}

unint64_t sub_1E4B9E5F0()
{
  result = qword_1EE2BD880;
  if (!qword_1EE2BD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD880);
  }

  return result;
}

unint64_t sub_1E4B9E644()
{
  result = qword_1EE2BD9F0;
  if (!qword_1EE2BD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9F0);
  }

  return result;
}

uint64_t sub_1E4B9E698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4B9E6E4()
{
  result = qword_1EE2BEBB8;
  if (!qword_1EE2BEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BEBB8);
  }

  return result;
}

unint64_t sub_1E4B9E738(void *a1)
{
  a1[1] = sub_1E4B9E770();
  a1[2] = sub_1E4B9E7C4();
  result = sub_1E4B9E818();
  a1[3] = result;
  return result;
}

unint64_t sub_1E4B9E770()
{
  result = qword_1EE2BEBB0;
  if (!qword_1EE2BEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BEBB0);
  }

  return result;
}

unint64_t sub_1E4B9E7C4()
{
  result = qword_1EE2BEBC8[0];
  if (!qword_1EE2BEBC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2BEBC8);
  }

  return result;
}

unint64_t sub_1E4B9E818()
{
  result = qword_1EE2BEBC0;
  if (!qword_1EE2BEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BEBC0);
  }

  return result;
}

uint64_t sub_1E4B9E8AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E4B9E93C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4B9EC80()
{
  result = qword_1ECF968E0;
  if (!qword_1ECF968E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF968E0);
  }

  return result;
}

unint64_t sub_1E4B9ECD8()
{
  result = qword_1ECF968E8;
  if (!qword_1ECF968E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF968E8);
  }

  return result;
}

unint64_t sub_1E4B9ED30()
{
  result = qword_1ECF968F0;
  if (!qword_1ECF968F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF968F0);
  }

  return result;
}

unint64_t sub_1E4B9ED88()
{
  result = qword_1ECF968F8;
  if (!qword_1ECF968F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF968F8);
  }

  return result;
}

unint64_t sub_1E4B9EDE0()
{
  result = qword_1ECF96900;
  if (!qword_1ECF96900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96900);
  }

  return result;
}

unint64_t sub_1E4B9EE38()
{
  result = qword_1ECF96908;
  if (!qword_1ECF96908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96908);
  }

  return result;
}

unint64_t sub_1E4B9EE90()
{
  result = qword_1ECF96910;
  if (!qword_1ECF96910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96910);
  }

  return result;
}

unint64_t sub_1E4B9EEE8()
{
  result = qword_1ECF96918;
  if (!qword_1ECF96918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96918);
  }

  return result;
}

unint64_t sub_1E4B9EF40()
{
  result = qword_1ECF96920;
  if (!qword_1ECF96920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96920);
  }

  return result;
}

unint64_t sub_1E4B9EF98()
{
  result = qword_1ECF96928;
  if (!qword_1ECF96928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96928);
  }

  return result;
}

unint64_t sub_1E4B9EFF0()
{
  result = qword_1ECF96930;
  if (!qword_1ECF96930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96930);
  }

  return result;
}

unint64_t sub_1E4B9F048()
{
  result = qword_1ECF96938;
  if (!qword_1ECF96938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96938);
  }

  return result;
}

unint64_t sub_1E4B9F0A0()
{
  result = qword_1ECF96940;
  if (!qword_1ECF96940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96940);
  }

  return result;
}

unint64_t sub_1E4B9F0F8()
{
  result = qword_1ECF96948;
  if (!qword_1ECF96948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96948);
  }

  return result;
}

unint64_t sub_1E4B9F150()
{
  result = qword_1ECF96950;
  if (!qword_1ECF96950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96950);
  }

  return result;
}

unint64_t sub_1E4B9F1A8()
{
  result = qword_1ECF96958;
  if (!qword_1ECF96958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96958);
  }

  return result;
}

unint64_t sub_1E4B9F200()
{
  result = qword_1ECF96960;
  if (!qword_1ECF96960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96960);
  }

  return result;
}

unint64_t sub_1E4B9F258()
{
  result = qword_1ECF96968;
  if (!qword_1ECF96968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96968);
  }

  return result;
}

unint64_t sub_1E4B9F2B0()
{
  result = qword_1ECF96970;
  if (!qword_1ECF96970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96970);
  }

  return result;
}

unint64_t sub_1E4B9F308()
{
  result = qword_1ECF96978;
  if (!qword_1ECF96978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96978);
  }

  return result;
}

unint64_t sub_1E4B9F360()
{
  result = qword_1ECF96980;
  if (!qword_1ECF96980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96980);
  }

  return result;
}

unint64_t sub_1E4B9F3B8()
{
  result = qword_1ECF96988;
  if (!qword_1ECF96988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96988);
  }

  return result;
}

unint64_t sub_1E4B9F410()
{
  result = qword_1ECF96990;
  if (!qword_1ECF96990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96990);
  }

  return result;
}

unint64_t sub_1E4B9F468()
{
  result = qword_1ECF96998;
  if (!qword_1ECF96998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96998);
  }

  return result;
}

unint64_t sub_1E4B9F4C0()
{
  result = qword_1ECF969A0;
  if (!qword_1ECF969A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969A0);
  }

  return result;
}

unint64_t sub_1E4B9F518()
{
  result = qword_1ECF969A8;
  if (!qword_1ECF969A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969A8);
  }

  return result;
}

unint64_t sub_1E4B9F570()
{
  result = qword_1ECF969B0;
  if (!qword_1ECF969B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969B0);
  }

  return result;
}

unint64_t sub_1E4B9F5C8()
{
  result = qword_1ECF969B8;
  if (!qword_1ECF969B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969B8);
  }

  return result;
}

unint64_t sub_1E4B9F620()
{
  result = qword_1ECF969C0;
  if (!qword_1ECF969C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969C0);
  }

  return result;
}

unint64_t sub_1E4B9F678()
{
  result = qword_1ECF969C8;
  if (!qword_1ECF969C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969C8);
  }

  return result;
}

unint64_t sub_1E4B9F6D0()
{
  result = qword_1ECF969D0;
  if (!qword_1ECF969D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969D0);
  }

  return result;
}

unint64_t sub_1E4B9F728()
{
  result = qword_1ECF969D8;
  if (!qword_1ECF969D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969D8);
  }

  return result;
}

unint64_t sub_1E4B9F780()
{
  result = qword_1ECF969E0;
  if (!qword_1ECF969E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969E0);
  }

  return result;
}

unint64_t sub_1E4B9F7D8()
{
  result = qword_1ECF969E8;
  if (!qword_1ECF969E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969E8);
  }

  return result;
}

unint64_t sub_1E4B9F830()
{
  result = qword_1ECF969F0;
  if (!qword_1ECF969F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969F0);
  }

  return result;
}

unint64_t sub_1E4B9F888()
{
  result = qword_1ECF969F8;
  if (!qword_1ECF969F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969F8);
  }

  return result;
}

unint64_t sub_1E4B9F8E0()
{
  result = qword_1ECF96A00;
  if (!qword_1ECF96A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A00);
  }

  return result;
}

unint64_t sub_1E4B9F938()
{
  result = qword_1ECF96A08;
  if (!qword_1ECF96A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A08);
  }

  return result;
}

unint64_t sub_1E4B9F990()
{
  result = qword_1ECF96A10;
  if (!qword_1ECF96A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A10);
  }

  return result;
}

unint64_t sub_1E4B9F9E8()
{
  result = qword_1ECF96A18;
  if (!qword_1ECF96A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A18);
  }

  return result;
}

unint64_t sub_1E4B9FA40()
{
  result = qword_1ECF96A20;
  if (!qword_1ECF96A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A20);
  }

  return result;
}

unint64_t sub_1E4B9FA98()
{
  result = qword_1ECF96A28;
  if (!qword_1ECF96A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A28);
  }

  return result;
}

unint64_t sub_1E4B9FAF0()
{
  result = qword_1ECF96A30;
  if (!qword_1ECF96A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A30);
  }

  return result;
}

unint64_t sub_1E4B9FB48()
{
  result = qword_1ECF96A38;
  if (!qword_1ECF96A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A38);
  }

  return result;
}

unint64_t sub_1E4B9FBA0()
{
  result = qword_1ECF96A40;
  if (!qword_1ECF96A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A40);
  }

  return result;
}

unint64_t sub_1E4B9FBF8()
{
  result = qword_1ECF96A48;
  if (!qword_1ECF96A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A48);
  }

  return result;
}

unint64_t sub_1E4B9FC50()
{
  result = qword_1ECF96A50;
  if (!qword_1ECF96A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A50);
  }

  return result;
}

unint64_t sub_1E4B9FCA8()
{
  result = qword_1ECF96A58;
  if (!qword_1ECF96A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A58);
  }

  return result;
}

unint64_t sub_1E4B9FD00()
{
  result = qword_1ECF96A60;
  if (!qword_1ECF96A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A60);
  }

  return result;
}

unint64_t sub_1E4B9FD58()
{
  result = qword_1ECF96A68;
  if (!qword_1ECF96A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A68);
  }

  return result;
}

unint64_t sub_1E4B9FDB0()
{
  result = qword_1ECF96A70;
  if (!qword_1ECF96A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A70);
  }

  return result;
}

unint64_t sub_1E4B9FE08()
{
  result = qword_1ECF96A78;
  if (!qword_1ECF96A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A78);
  }

  return result;
}

unint64_t sub_1E4B9FE60()
{
  result = qword_1ECF96A80;
  if (!qword_1ECF96A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A80);
  }

  return result;
}

unint64_t sub_1E4B9FEB8()
{
  result = qword_1ECF96A88;
  if (!qword_1ECF96A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A88);
  }

  return result;
}

unint64_t sub_1E4B9FF10()
{
  result = qword_1ECF96A90;
  if (!qword_1ECF96A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A90);
  }

  return result;
}

unint64_t sub_1E4B9FF68()
{
  result = qword_1ECF96A98;
  if (!qword_1ECF96A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A98);
  }

  return result;
}

unint64_t sub_1E4B9FFC0()
{
  result = qword_1ECF96AA0;
  if (!qword_1ECF96AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AA0);
  }

  return result;
}

unint64_t sub_1E4BA0018()
{
  result = qword_1ECF96AA8;
  if (!qword_1ECF96AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AA8);
  }

  return result;
}

unint64_t sub_1E4BA0070()
{
  result = qword_1ECF96AB0;
  if (!qword_1ECF96AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AB0);
  }

  return result;
}

unint64_t sub_1E4BA00C8()
{
  result = qword_1ECF96AB8;
  if (!qword_1ECF96AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AB8);
  }

  return result;
}

unint64_t sub_1E4BA0120()
{
  result = qword_1ECF96AC0;
  if (!qword_1ECF96AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AC0);
  }

  return result;
}

unint64_t sub_1E4BA0178()
{
  result = qword_1ECF96AC8;
  if (!qword_1ECF96AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AC8);
  }

  return result;
}

unint64_t sub_1E4BA01D0()
{
  result = qword_1ECF96AD0;
  if (!qword_1ECF96AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AD0);
  }

  return result;
}

unint64_t sub_1E4BA0228()
{
  result = qword_1ECF96AD8;
  if (!qword_1ECF96AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AD8);
  }

  return result;
}

unint64_t sub_1E4BA0280()
{
  result = qword_1ECF96AE0;
  if (!qword_1ECF96AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AE0);
  }

  return result;
}

unint64_t sub_1E4BA02D8()
{
  result = qword_1ECF96AE8;
  if (!qword_1ECF96AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AE8);
  }

  return result;
}

unint64_t sub_1E4BA0330()
{
  result = qword_1ECF96AF0;
  if (!qword_1ECF96AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AF0);
  }

  return result;
}

unint64_t sub_1E4BA0388()
{
  result = qword_1ECF96AF8;
  if (!qword_1ECF96AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AF8);
  }

  return result;
}

unint64_t sub_1E4BA03E0()
{
  result = qword_1ECF96B00;
  if (!qword_1ECF96B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B00);
  }

  return result;
}

unint64_t sub_1E4BA0438()
{
  result = qword_1ECF96B08;
  if (!qword_1ECF96B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B08);
  }

  return result;
}

unint64_t sub_1E4BA0490()
{
  result = qword_1ECF96B10;
  if (!qword_1ECF96B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B10);
  }

  return result;
}

unint64_t sub_1E4BA04E8()
{
  result = qword_1ECF96B18;
  if (!qword_1ECF96B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B18);
  }

  return result;
}

unint64_t sub_1E4BA0540()
{
  result = qword_1ECF96B20;
  if (!qword_1ECF96B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B20);
  }

  return result;
}

unint64_t sub_1E4BA0598()
{
  result = qword_1ECF96B28;
  if (!qword_1ECF96B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B28);
  }

  return result;
}

unint64_t sub_1E4BA05F0()
{
  result = qword_1ECF96B30;
  if (!qword_1ECF96B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B30);
  }

  return result;
}

unint64_t sub_1E4BA0648()
{
  result = qword_1ECF96B38;
  if (!qword_1ECF96B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B38);
  }

  return result;
}

unint64_t sub_1E4BA06A0()
{
  result = qword_1ECF96B40;
  if (!qword_1ECF96B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B40);
  }

  return result;
}

unint64_t sub_1E4BA06F8()
{
  result = qword_1ECF96B48;
  if (!qword_1ECF96B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B48);
  }

  return result;
}

unint64_t sub_1E4BA0750()
{
  result = qword_1ECF96B50;
  if (!qword_1ECF96B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B50);
  }

  return result;
}

unint64_t sub_1E4BA07A8()
{
  result = qword_1ECF96B58;
  if (!qword_1ECF96B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B58);
  }

  return result;
}

unint64_t sub_1E4BA0800()
{
  result = qword_1ECF96B60;
  if (!qword_1ECF96B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B60);
  }

  return result;
}

unint64_t sub_1E4BA0858()
{
  result = qword_1ECF96B68;
  if (!qword_1ECF96B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B68);
  }

  return result;
}

unint64_t sub_1E4BA08B0()
{
  result = qword_1ECF96B70;
  if (!qword_1ECF96B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B70);
  }

  return result;
}

uint64_t sub_1E4BA0904(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534D53646E6573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52534D53646E6573 && a2 == 0xED0000746C757365 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x52534D4D646E6573 && a2 == 0xED0000746C757365 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6965636552736D73 && a2 == 0xEB00000000646576 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6965636552736D6DLL && a2 == 0xEB00000000646576 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6972746552736D6DLL && a2 == 0xEB00000000657665 || (sub_1E4BF099C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x534D4D646E6573 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF21F0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E4BF2210 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x534352646E6573 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E4BF2230 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5265766965636572 && a2 == 0xEA00000000005343 || (sub_1E4BF099C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x52534352646E6573 && a2 == 0xED0000746C757365 || (sub_1E4BF099C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF2250 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E4BF2270 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E4BF2290 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF22B0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E4BF22D0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E4BF22F0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001E4BF2320 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001E4BF2350 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001E4BF2380 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E4BF23B0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E4BF23E0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E4BF2400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E4BF2420 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x726F706552736D73 && a2 == 0xED00006D61705374 || (sub_1E4BF099C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x726F706552736D6DLL && a2 == 0xED00006D61705374 || (sub_1E4BF099C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x726F706552736372 && a2 == 0xED00006D61705374 || (sub_1E4BF099C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF2440 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001E4BF2460 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E4BF2480 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001E4BF24A0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E4BF24D0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001E4BF2500 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF2530 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF2550 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E4BF2570 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E4BF2590 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001E4BF25B0 == a2)
  {

    return 39;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 39;
    }

    else
    {
      return 40;
    }
  }
}

uint64_t sub_1E4BA1544()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF96B78);
  v1 = __swift_project_value_buffer(v0, qword_1ECF96B78);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4BA160C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4BEFAFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E4BA1674()
{
  v1 = *(*v0 + 80);
  v24 = sub_1E4BF024C();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v19 - v3;
  v6 = type metadata accessor for NotificationManager.Registration(0, v1, v4, v5);
  v7 = *(v6 - 8);
  v19 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = v0[2];
  v26 = v1;
  sub_1E4BF017C();
  sub_1E4B86564(sub_1E4BA1B60, v25, v10);
  v11 = v27;
  if (!sub_1E4BF015C())
  {
  }

  v12 = 0;
  v21 = *(v6 + 28);
  v22 = (v7 + 16);
  v20 = (v2 + 16);
  v13 = (v2 + 8);
  v14 = v24;
  while (1)
  {
    v15 = sub_1E4BF013C();
    sub_1E4BF00EC();
    if (v15)
    {
      (*(v7 + 16))(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v6);
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1E4BF06AC();
    if (v19 != 8)
    {
      break;
    }

    v27 = result;
    (*v22)(v9, &v27, v6);
    swift_unknownObjectRelease();
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_10:
      __break(1u);
    }

LABEL_5:
    v17 = v23;
    (*v20)(v23, &v9[v21], v14);
    (*(v7 + 8))(v9, v6);
    sub_1E4BF023C();
    (*v13)(v17, v14);
    ++v12;
    if (v16 == sub_1E4BF015C())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4BA1980()
{
  sub_1E4BA1674();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1E4BA19D4(uint64_t a1)
{
  result = sub_1E4BEFAFC();
  if (v2 <= 0x3F)
  {
    result = sub_1E4BF024C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E4BA1AA0()
{
  result = qword_1ECF94700;
  if (!qword_1ECF94700)
  {
    sub_1E4BEFAFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94700);
  }

  return result;
}

uint64_t sub_1E4BA1AF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  type metadata accessor for NotificationManager.Registration(255, a2, a3, a4);
  sub_1E4BF017C();

  result = sub_1E4BF016C();
  *a5 = v6;
  return result;
}

uint64_t RCSCapabilityDiscoveryRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 41) = v7;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

double RCSCapabilityDiscoveryRequest.operationID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

__n128 RCSCapabilityDiscoveryRequest.init(request:operationID:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *a2;
  v6 = a2[1];
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a3 + 24) = result;
  *(a3 + 40) = v3;
  *(a3 + 41) = v4;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  return result;
}

uint64_t sub_1E4BA1BF4()
{
  if (*v0)
  {
    return 0x6F6974617265706FLL;
  }

  else
  {
    return 0x747365757165725FLL;
  }
}

uint64_t sub_1E4BA1C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747365757165725FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4BA1D18(uint64_t a1)
{
  v2 = sub_1E4BA1FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA1D54(uint64_t a1)
{
  v2 = sub_1E4BA1FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSCapabilityDiscoveryRequest.encode(to:)(void *a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96C90, &qword_1E4C12EA0);
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v15 - v3;
  v30 = *v1;
  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  v8 = *(v1 + 3);
  v7 = *(v1 + 4);
  v9 = v1[40];
  v19 = v1[41];
  v10 = *(v1 + 7);
  v16 = *(v1 + 6);
  v17 = v10;
  v11 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1E4ADD6D8(v5, v6, v8, v7, v9);
  sub_1E4BA1FA8();
  v12 = v20;
  sub_1E4BF0ACC();
  LOBYTE(v23) = v30;
  v24 = v5;
  v25 = v6;
  v26 = v8;
  v27 = v7;
  v28 = v9;
  v29 = v19;
  v31 = 0;
  sub_1E4ADFCF0();
  v13 = v21;
  sub_1E4BF093C();
  sub_1E4ADD764(v24, v25, v26, v27, v28);
  if (!v13)
  {
    v23 = v16;
    v24 = v17;
    v31 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();
  }

  return (*(v22 + 8))(v4, v12);
}

unint64_t sub_1E4BA1FA8()
{
  result = qword_1ECF96C98;
  if (!qword_1ECF96C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96C98);
  }

  return result;
}

uint64_t RCSCapabilityDiscoveryRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CA0, &qword_1E4C12EA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA1FA8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25[0]) = 0;
  sub_1E4ADFC98();
  sub_1E4BF087C();
  v22 = v28;
  v9 = v29;
  v23 = v30;
  v24 = v31;
  v21 = v33;
  v37 = v32;
  v38 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  (*(v6 + 8))(v8, v5);
  v18 = *(&v36 + 1);
  v19 = v36;
  v10 = v22;
  LOBYTE(v25[0]) = v22;
  v11 = v9;
  v12 = v23;
  *(&v25[0] + 1) = v9;
  v25[1] = v23;
  v13 = v24;
  *&v26 = v24;
  v20 = v37;
  BYTE8(v26) = v37;
  v14 = v21;
  BYTE9(v26) = v21;
  v27 = v36;
  v15 = v23;
  *a2 = v25[0];
  a2[1] = v15;
  v16 = v27;
  a2[2] = v26;
  a2[3] = v16;
  sub_1E4BA22E8(v25, &v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v28) = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v20;
  v33 = v14;
  v34 = v19;
  v35 = v18;
  return sub_1E4BA2320(&v28);
}

__n128 RCSCapabilityDiscoveryResponseNotification.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1E4ADD764(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

double RCSCapabilityDiscoveryResponseNotification.operationID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0) + 28);

  return sub_1E4BA2474(v3, a1);
}

uint64_t sub_1E4BA2474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.capabilities.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0) + 28);

  return sub_1E4BA2528(a1, v3);
}

uint64_t sub_1E4BA2528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.error.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.init(cellularServiceID:handle:operationID:capabilities:error:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = *(a2 + 32);
  v11 = *a3;
  v12 = a3[1];
  v13 = *a5;
  v14 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
  v15 = *(v14 + 28);
  v16 = type metadata accessor for RCSService.RemoteCapabilities(0);
  v18 = a2[1];
  v19 = *a2;
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  *a6 = v9;
  *(a6 + 24) = v18;
  *(a6 + 8) = v19;
  *(a6 + 40) = v10;
  *(a6 + 48) = v11;
  *(a6 + 56) = v12;
  result = sub_1E4BA2528(a4, a6 + v15);
  *(a6 + *(v14 + 32)) = v13;
  return result;
}

unint64_t sub_1E4BA26F8()
{
  v1 = *v0;
  v2 = 0x656C646E6168;
  v3 = 0x6F6974617265706FLL;
  v4 = 0x696C696261706163;
  if (v1 != 3)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4BA27A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BA4FC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BA27C8(uint64_t a1)
{
  v2 = sub_1E4BA2B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA2804(uint64_t a1)
{
  v2 = sub_1E4BA2B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSCapabilityDiscoveryResponseNotification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CA8, &qword_1E4C12EB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA2B10();
  sub_1E4BF0ACC();
  LOBYTE(v17) = *v3;
  v22 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    v12 = *(v3 + 40);
    v17 = *(v3 + 8);
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = 1;
    sub_1E4ADD6D8(v17, v9, v10, v11, v12);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v17, v18, v19, v20, v21);
    v13 = *(v3 + 56);
    v17 = *(v3 + 48);
    v18 = v13;
    v22 = 2;
    sub_1E4B1AC54();

    sub_1E4BF093C();

    v14 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
    LOBYTE(v17) = 3;
    type metadata accessor for RCSService.RemoteCapabilities(0);
    sub_1E4BA3060(&qword_1ECF96CB8, type metadata accessor for RCSService.RemoteCapabilities, &protocol conformance descriptor for RCSService.RemoteCapabilities);
    sub_1E4BF08EC();
    LOBYTE(v17) = *(v3 + *(v14 + 32));
    v22 = 4;
    sub_1E4B1B740();
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E4BA2B10()
{
  result = qword_1ECF96CB0;
  if (!qword_1ECF96CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96CB0);
  }

  return result;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CC0, &qword_1E4C12EC0);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 28);
  v14 = type metadata accessor for RCSService.RemoteCapabilities(0);
  v15 = *(*(v14 - 8) + 56);
  v30 = v13;
  v16 = v12;
  v15(&v12[v13], 1, 1, v14);
  v17 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E4BA2B10();
  v18 = v28;
  sub_1E4BF0ABC();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    return sub_1E4BA2FF8(&v12[v30]);
  }

  else
  {
    v19 = v26;
    v34 = 0;
    sub_1E4ADBF38();
    v20 = v27;
    sub_1E4BF087C();
    *v16 = v31;
    v34 = 1;
    sub_1E4ADFA7C();
    sub_1E4BF087C();
    v21 = v33;
    v22 = v32;
    *(v16 + 8) = v31;
    *(v16 + 24) = v22;
    *(v16 + 40) = v21;
    v34 = 2;
    sub_1E4B1ACFC();
    sub_1E4BF087C();
    v23 = *(&v31 + 1);
    *(v16 + 48) = v31;
    *(v16 + 56) = v23;
    LOBYTE(v31) = 3;
    sub_1E4BA3060(&qword_1ECF96CC8, type metadata accessor for RCSService.RemoteCapabilities, &protocol conformance descriptor for RCSService.RemoteCapabilities);
    sub_1E4BF082C();
    sub_1E4BA2528(v5, v16 + v30);
    v34 = 4;
    sub_1E4B1B7E8();
    sub_1E4BF082C();
    (*(v19 + 8))(v8, v20);
    *(v16 + *(v9 + 32)) = v31;
    sub_1E4BA3188(v16, v25, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return sub_1E4BA39B0(v16, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
  }
}

uint64_t sub_1E4BA2FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4BA3060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4BA3100@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

uint64_t sub_1E4BA3188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t RCSCapabilityDiscoveryNotification.init(cellularServiceID:handle:capabilities:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 32);
  *a4 = *a1;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v5;
  v7 = a4 + *(type metadata accessor for RCSCapabilityDiscoveryNotification(0) + 24);

  return sub_1E4BA3254(a3, v7);
}

uint64_t sub_1E4BA3254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.RemoteCapabilities(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BA32B8()
{
  v1 = 0x656C646E6168;
  if (*v0 != 1)
  {
    v1 = 0x696C696261706163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4BA331C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BA5180(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BA3344(uint64_t a1)
{
  v2 = sub_1E4BA35F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA3380(uint64_t a1)
{
  v2 = sub_1E4BA35F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSCapabilityDiscoveryNotification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CD0, &qword_1E4C12EC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA35F0();
  sub_1E4BF0ACC();
  LOBYTE(v15) = *v3;
  v20 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    v12 = *(v3 + 40);
    v15 = *(v3 + 8);
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = 1;
    sub_1E4ADD6D8(v15, v9, v10, v11, v12);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v15, v16, v17, v18, v19);
    type metadata accessor for RCSCapabilityDiscoveryNotification(0);
    LOBYTE(v15) = 2;
    type metadata accessor for RCSService.RemoteCapabilities(0);
    sub_1E4BA3060(&qword_1ECF96CB8, type metadata accessor for RCSService.RemoteCapabilities, &protocol conformance descriptor for RCSService.RemoteCapabilities);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E4BA35F0()
{
  result = qword_1ECF96CD8;
  if (!qword_1ECF96CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96CD8);
  }

  return result;
}

uint64_t RCSCapabilityDiscoveryNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for RCSService.RemoteCapabilities(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CE0, &qword_1E4C12ED0);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for RCSCapabilityDiscoveryNotification(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA35F0();
  v25 = v8;
  v12 = v26;
  sub_1E4BF0ABC();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v9;
  v13 = a1;
  v14 = v23;
  v15 = v5;
  v30 = 0;
  sub_1E4ADBF38();
  v16 = v24;
  sub_1E4BF087C();
  *v11 = v27;
  v30 = 1;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v17 = v29;
  v18 = v28;
  *(v11 + 8) = v27;
  *(v11 + 24) = v18;
  v11[40] = v17;
  LOBYTE(v27) = 2;
  sub_1E4BA3060(&qword_1ECF96CC8, type metadata accessor for RCSService.RemoteCapabilities, &protocol conformance descriptor for RCSService.RemoteCapabilities);
  v19 = v25;
  sub_1E4BF087C();
  (*(v14 + 8))(v19, v16);
  sub_1E4BA3254(v15, &v11[*(v26 + 24)]);
  sub_1E4BA3188(v11, v22, type metadata accessor for RCSCapabilityDiscoveryNotification);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_1E4BA39B0(v11, type metadata accessor for RCSCapabilityDiscoveryNotification);
}

uint64_t sub_1E4BA39B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RCSCapabilitiesUpdatedNotification.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

uint64_t RCSCapabilitiesUpdatedNotification.newHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

__n128 RCSCapabilitiesUpdatedNotification.init(cellularServiceID:handle:newHandle:isBusinessHandle:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 32);
  v6 = *(a3 + 32);
  *a5 = *a1;
  v7 = *(a2 + 16);
  *(a5 + 8) = *a2;
  *(a5 + 24) = v7;
  *(a5 + 40) = v5;
  result = *a3;
  v9 = *(a3 + 16);
  *(a5 + 48) = *a3;
  *(a5 + 64) = v9;
  *(a5 + 80) = v6;
  *(a5 + 81) = a4;
  return result;
}

unint64_t sub_1E4BA3AD8()
{
  v1 = 0x656C646E6168;
  v2 = 0x6C646E614877656ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E4BA3B58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BA52A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BA3B80(uint64_t a1)
{
  v2 = sub_1E4BA3E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA3BBC(uint64_t a1)
{
  v2 = sub_1E4BA3E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSCapabilitiesUpdatedNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CE8, &qword_1E4C12ED8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v25 = *(v1 + 2);
  v26 = v8;
  v9 = *(v1 + 3);
  v23 = *(v1 + 4);
  v24 = v9;
  v10 = v1[40];
  v11 = *(v1 + 6);
  v21 = *(v1 + 7);
  v22 = v11;
  v12 = *(v1 + 8);
  v19 = *(v1 + 9);
  v20 = v12;
  v33 = v1[80];
  v18[3] = v1[81];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA3E80();
  v13 = v3;
  sub_1E4BF0ACC();
  LOBYTE(v28) = v7;
  v34 = 0;
  sub_1E4ADBE98();
  v14 = v27;
  sub_1E4BF093C();
  if (!v14)
  {
    v15 = v21;
    v16 = v22;
    v28 = v26;
    v29 = v25;
    v30 = v24;
    v31 = v23;
    v32 = v10;
    v34 = 1;
    sub_1E4ADD6D8(v26, v25, v24, v23, v10);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v28, v29, v30, v31, v32);
    v28 = v16;
    v29 = v15;
    v30 = v20;
    v31 = v19;
    v32 = v33;
    v34 = 2;
    sub_1E4ADD6D8(v16, v15, v20, v19, v33);
    sub_1E4BF093C();
    sub_1E4ADD764(v28, v29, v30, v31, v32);
    LOBYTE(v28) = 3;
    sub_1E4BF090C();
  }

  return (*(v4 + 8))(v6, v13);
}

unint64_t sub_1E4BA3E80()
{
  result = qword_1ECF96CF0;
  if (!qword_1ECF96CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96CF0);
  }

  return result;
}

uint64_t RCSCapabilitiesUpdatedNotification.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CF8, &qword_1E4C12EE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA3E80();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37) = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v36 = a2;
  v9 = v43;
  LOBYTE(v37) = 1;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v32 = v9;
  v33 = *(&v43 + 1);
  v35 = v43;
  v10 = v44;
  v34 = v45;
  v11 = v46;
  v54 = v46;
  LOBYTE(v37) = 2;
  sub_1E4BF087C();
  v29 = v11;
  v31 = v10;
  v30 = v43;
  v13 = v44;
  v12 = v45;
  v53 = v46;
  v55 = 3;
  v14 = sub_1E4BF084C();
  (*(v6 + 8))(v8, v5);
  v27 = v14 & 1;
  LOBYTE(v37) = v32;
  *(&v37 + 1) = v35;
  v15 = v33;
  v16 = v13;
  v28 = v13;
  v17 = v31;
  *&v38 = v33;
  *(&v38 + 1) = v31;
  v18 = v34;
  *&v39 = v34;
  v29 = v54;
  BYTE8(v39) = v54;
  v19 = v30;
  v40 = v30;
  *&v41 = v16;
  *(&v41 + 1) = v12;
  v20 = v53;
  LOBYTE(v42) = v53;
  HIBYTE(v42) = v14 & 1;
  v21 = v41;
  v26 = v12;
  v22 = v36;
  v24 = v38;
  v23 = v39;
  *v36 = v37;
  v22[1] = v24;
  v22[3] = v40;
  v22[4] = v21;
  v22[2] = v23;
  *(v22 + 40) = v42;
  sub_1E4BA4360(&v37, &v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v43) = v32;
  *(&v43 + 1) = v35;
  v44 = v15;
  v45 = v17;
  v46 = v18;
  v47 = v29;
  v48 = v19;
  v49 = v28;
  v50 = v26;
  v51 = v20;
  v52 = v27;
  return sub_1E4BA4398(&v43);
}

unint64_t sub_1E4BA43C8(uint64_t a1)
{
  result = sub_1E4B9E644();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4BA441C()
{
  result = qword_1EE2BD9F8;
  if (!qword_1EE2BD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9F8);
  }

  return result;
}

unint64_t sub_1E4BA4470()
{
  result = qword_1EE2BDA00;
  if (!qword_1EE2BDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA00);
  }

  return result;
}

uint64_t sub_1E4BA44C4(uint64_t a1)
{
  result = sub_1E4BA3060(&qword_1ECF95F80, type metadata accessor for RCSCapabilityDiscoveryResponseNotification, &protocol conformance descriptor for RCSCapabilityDiscoveryResponseNotification);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BA451C(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BA3060(&qword_1ECF96D00, type metadata accessor for RCSCapabilityDiscoveryResponseNotification, &protocol conformance descriptor for RCSCapabilityDiscoveryResponseNotification);
  result = sub_1E4BA3060(&qword_1ECF96D08, type metadata accessor for RCSCapabilityDiscoveryResponseNotification, &protocol conformance descriptor for RCSCapabilityDiscoveryResponseNotification);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BA45A0(uint64_t a1)
{
  result = sub_1E4BA3060(&qword_1ECF95F48, type metadata accessor for RCSCapabilityDiscoveryNotification, &protocol conformance descriptor for RCSCapabilityDiscoveryNotification);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BA45F8(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BA3060(&qword_1ECF96D10, type metadata accessor for RCSCapabilityDiscoveryNotification, &protocol conformance descriptor for RCSCapabilityDiscoveryNotification);
  result = sub_1E4BA3060(&qword_1ECF96D18, type metadata accessor for RCSCapabilityDiscoveryNotification, &protocol conformance descriptor for RCSCapabilityDiscoveryNotification);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BA467C(uint64_t a1)
{
  result = sub_1E4B84D44();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BA46D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BA470C()
{
  result = qword_1ECF96D20;
  if (!qword_1ECF96D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D20);
  }

  return result;
}

unint64_t sub_1E4BA4760()
{
  result = qword_1ECF96D28;
  if (!qword_1ECF96D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D28);
  }

  return result;
}

uint64_t sub_1E4BA47E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4BA482C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E4BA48B4(uint64_t a1)
{
  sub_1E4BA4960(319);
  if (v1 <= 0x3F)
  {
    sub_1E4BA49B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4BA4960(uint64_t a1)
{
  if (!qword_1ECF96D40)
  {
    type metadata accessor for RCSService.RemoteCapabilities(255);
    v1 = sub_1E4BF053C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF96D40);
    }
  }
}

void sub_1E4BA49B8()
{
  if (!qword_1ECF96D48)
  {
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF96D48);
    }
  }
}

uint64_t sub_1E4BA4A30(uint64_t a1)
{
  result = type metadata accessor for RCSService.RemoteCapabilities(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E4BA4AB4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[82])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E4BA4AF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E4BA4BA8()
{
  result = qword_1ECF96D60;
  if (!qword_1ECF96D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D60);
  }

  return result;
}

unint64_t sub_1E4BA4C00()
{
  result = qword_1ECF96D68;
  if (!qword_1ECF96D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D68);
  }

  return result;
}

unint64_t sub_1E4BA4C58()
{
  result = qword_1ECF96D70;
  if (!qword_1ECF96D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D70);
  }

  return result;
}

unint64_t sub_1E4BA4CB0()
{
  result = qword_1ECF96D78;
  if (!qword_1ECF96D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D78);
  }

  return result;
}

unint64_t sub_1E4BA4D08()
{
  result = qword_1ECF96D80;
  if (!qword_1ECF96D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D80);
  }

  return result;
}

unint64_t sub_1E4BA4D60()
{
  result = qword_1ECF96D88;
  if (!qword_1ECF96D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D88);
  }

  return result;
}

unint64_t sub_1E4BA4DB8()
{
  result = qword_1ECF96D90;
  if (!qword_1ECF96D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D90);
  }

  return result;
}

unint64_t sub_1E4BA4E10()
{
  result = qword_1ECF96D98;
  if (!qword_1ECF96D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D98);
  }

  return result;
}

unint64_t sub_1E4BA4E68()
{
  result = qword_1ECF96DA0;
  if (!qword_1ECF96DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DA0);
  }

  return result;
}

unint64_t sub_1E4BA4EC0()
{
  result = qword_1ECF96DA8;
  if (!qword_1ECF96DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DA8);
  }

  return result;
}

unint64_t sub_1E4BA4F18()
{
  result = qword_1ECF96DB0;
  if (!qword_1ECF96DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DB0);
  }

  return result;
}

unint64_t sub_1E4BA4F70()
{
  result = qword_1ECF96DB8;
  if (!qword_1ECF96DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DB8);
  }

  return result;
}

uint64_t sub_1E4BA4FC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E4BA5180(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4BA52A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C646E614877656ELL && a2 == 0xE900000000000065 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF13E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t RCSReportSpamRequest.Transport.description.getter()
{
  if (*v0)
  {
    return 5459283;
  }

  else
  {
    return 5456722;
  }
}

uint64_t sub_1E4BA545C()
{
  if (*v0)
  {
    return 7564659;
  }

  else
  {
    return 7562098;
  }
}

uint64_t sub_1E4BA547C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7562098 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7564659 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4BA554C(uint64_t a1)
{
  v2 = sub_1E4BA5964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA5588(uint64_t a1)
{
  v2 = sub_1E4BA5964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA55C4(uint64_t a1)
{
  v2 = sub_1E4BA5A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA5600(uint64_t a1)
{
  v2 = sub_1E4BA5A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA563C(uint64_t a1)
{
  v2 = sub_1E4BA59B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA5678(uint64_t a1)
{
  v2 = sub_1E4BA59B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSReportSpamRequest.Transport.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96DC0, &qword_1E4C13770);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96DC8, &qword_1E4C13778);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96DD0, &qword_1E4C13780);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA5964();
  sub_1E4BF0ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E4BA59B8();
    v14 = v18;
    sub_1E4BF08BC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E4BA5A0C();
    sub_1E4BF08BC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E4BA5964()
{
  result = qword_1ECF96DD8;
  if (!qword_1ECF96DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DD8);
  }

  return result;
}

unint64_t sub_1E4BA59B8()
{
  result = qword_1ECF96DE0;
  if (!qword_1ECF96DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DE0);
  }

  return result;
}

unint64_t sub_1E4BA5A0C()
{
  result = qword_1ECF96DE8;
  if (!qword_1ECF96DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DE8);
  }

  return result;
}

uint64_t RCSReportSpamRequest.Transport.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSReportSpamRequest.Transport.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96DF0, &qword_1E4C13788);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96DF8, &qword_1E4C13790);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E00, &unk_1E4C13798);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA5964();
  v12 = v31;
  sub_1E4BF0ABC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E4BF088C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E4AE0F10();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E4BF06EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v22 = &type metadata for RCSReportSpamRequest.Transport;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E4BA59B8();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E4BA5A0C();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1E4BA5FC0()
{
  if (*v0)
  {
    return 5459283;
  }

  else
  {
    return 5456722;
  }
}

double RCSReportSpamRequest.operationID.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSReportSpamRequest(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t type metadata accessor for RCSReportSpamRequest(uint64_t a1)
{
  result = qword_1EE2BDC80;
  if (!qword_1EE2BDC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RCSReportSpamRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4BA6B6C(v1, v6, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation);
  sub_1E4BA6B6C(v6, a1, type metadata accessor for RCSMessage);
  v7 = &v6[v4[7]];
  v8 = *v7;
  v9 = v7[1];
  v10 = v6[v4[8]];
  v11 = &v6[v4[9]];
  v13 = *v11;
  v12 = *(v11 + 1);
  sub_1E4AE4B24(v8, v9);

  sub_1E4BA6BD4(v6, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation);
  v14 = type metadata accessor for RCSService.ReportSpamRequest(0);
  v15 = a1 + v14[5];
  *v15 = xmmword_1E4BFB5F0;
  v16 = v14[6];
  *(a1 + v16) = 5;
  v17 = (a1 + v14[7]);
  result = sub_1E4AE4BD4(*v15, *(v15 + 8));
  *v15 = v8;
  *(v15 + 8) = v9;
  *(a1 + v16) = v10;
  *v17 = v13;
  v17[1] = v12;
  return result;
}

uint64_t RCSReportSpamRequest.transport.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSReportSpamRequest(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

int *RCSReportSpamRequest.init(operationID:request:transport:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a3;
  v9 = type metadata accessor for RCSReportSpamRequest(0);
  v10 = (a4 + *(v9 + 20));
  *v10 = v6;
  v10[1] = v7;
  sub_1E4BA6B6C(a2, a4, type metadata accessor for RCSMessage);
  v11 = type metadata accessor for RCSService.ReportSpamRequest(0);
  v12 = (a2 + v11[5]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(a2 + v11[6]);
  v16 = (a2 + v11[7]);
  v18 = *v16;
  v17 = v16[1];
  sub_1E4AE4B24(v13, v14);

  sub_1E4BA6BD4(a2, type metadata accessor for RCSService.ReportSpamRequest);
  result = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v20 = (a4 + result[5]);
  *v20 = v13;
  v20[1] = v14;
  *(a4 + result[6]) = v15;
  v21 = (a4 + result[7]);
  *v21 = v18;
  v21[1] = v17;
  *(a4 + *(v9 + 24)) = v8;
  return result;
}

uint64_t sub_1E4BA6318()
{
  v1 = 0x6F6974617265706FLL;
  if (*v0 != 1)
  {
    v1 = 0x726F70736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7165526D6170735FLL;
  }
}

uint64_t sub_1E4BA6388@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BA7258(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BA63B0(uint64_t a1)
{
  v2 = sub_1E4BA6658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA63EC(uint64_t a1)
{
  v2 = sub_1E4BA6658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSReportSpamRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E08, &qword_1E4C137A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA6658();
  sub_1E4BF0ACC();
  LOBYTE(v15) = 0;
  type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  sub_1E4BA6D74(&qword_1ECF92920, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation, &protocol conformance descriptor for RCSService.ReportSpamRequest.CodableRepresentation);
  sub_1E4BF093C();
  if (!v2)
  {
    v9 = type metadata accessor for RCSReportSpamRequest(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();

    LOBYTE(v15) = *(v3 + *(v9 + 24));
    v14 = 2;
    sub_1E4BA66AC();
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E4BA6658()
{
  result = qword_1ECF96E10;
  if (!qword_1ECF96E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E10);
  }

  return result;
}

unint64_t sub_1E4BA66AC()
{
  result = qword_1ECF96E18;
  if (!qword_1ECF96E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E18);
  }

  return result;
}

uint64_t RCSReportSpamRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E20, &qword_1E4C137B0);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RCSReportSpamRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1E4BA6658();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v14 = v21;
  v15 = v12;
  LOBYTE(v24) = 0;
  sub_1E4BA6D74(&qword_1ECF92918, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation, &protocol conformance descriptor for RCSService.ReportSpamRequest.CodableRepresentation);
  v16 = v22;
  sub_1E4BF087C();
  sub_1E4BA6AB4(v6, v15);
  v26 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  v17 = v25;
  v18 = (v15 + *(v10 + 20));
  *v18 = v24;
  v18[1] = v17;
  v26 = 2;
  sub_1E4BA6B18();
  sub_1E4BF087C();
  (*(v14 + 8))(v9, v16);
  *(v15 + *(v10 + 24)) = v24;
  sub_1E4BA6B6C(v15, v20, type metadata accessor for RCSReportSpamRequest);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_1E4BA6BD4(v15, type metadata accessor for RCSReportSpamRequest);
}

uint64_t sub_1E4BA6AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4BA6B18()
{
  result = qword_1ECF96E28;
  if (!qword_1ECF96E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E28);
  }

  return result;
}

uint64_t sub_1E4BA6B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BA6BD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4BA6C38()
{
  result = qword_1ECF96E30;
  if (!qword_1ECF96E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E30);
  }

  return result;
}

uint64_t sub_1E4BA6C8C(uint64_t a1)
{
  result = sub_1E4BA6D74(&qword_1EE2BDC90, type metadata accessor for RCSReportSpamRequest, &protocol conformance descriptor for RCSReportSpamRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BA6CF0(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BA6D74(&qword_1EE2BDC98, type metadata accessor for RCSReportSpamRequest, &protocol conformance descriptor for RCSReportSpamRequest);
  result = sub_1E4BA6D74(qword_1EE2BDCA0, type metadata accessor for RCSReportSpamRequest, &protocol conformance descriptor for RCSReportSpamRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BA6D74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4BA6E14(uint64_t a1)
{
  result = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4BA6EEC()
{
  result = qword_1ECF96E38;
  if (!qword_1ECF96E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E38);
  }

  return result;
}

unint64_t sub_1E4BA6F44()
{
  result = qword_1ECF96E40;
  if (!qword_1ECF96E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E40);
  }

  return result;
}

unint64_t sub_1E4BA6F9C()
{
  result = qword_1ECF96E48;
  if (!qword_1ECF96E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E48);
  }

  return result;
}

unint64_t sub_1E4BA6FF4()
{
  result = qword_1ECF96E50;
  if (!qword_1ECF96E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E50);
  }

  return result;
}

unint64_t sub_1E4BA704C()
{
  result = qword_1ECF96E58;
  if (!qword_1ECF96E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E58);
  }

  return result;
}

unint64_t sub_1E4BA70A4()
{
  result = qword_1ECF96E60;
  if (!qword_1ECF96E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E60);
  }

  return result;
}

unint64_t sub_1E4BA70FC()
{
  result = qword_1ECF96E68;
  if (!qword_1ECF96E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E68);
  }

  return result;
}

unint64_t sub_1E4BA7154()
{
  result = qword_1ECF96E70;
  if (!qword_1ECF96E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E70);
  }

  return result;
}

unint64_t sub_1E4BA71AC()
{
  result = qword_1ECF96E78;
  if (!qword_1ECF96E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E78);
  }

  return result;
}

unint64_t sub_1E4BA7204()
{
  result = qword_1ECF96E80;
  if (!qword_1ECF96E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E80);
  }

  return result;
}

uint64_t sub_1E4BA7258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7165526D6170735FLL && a2 == 0xEC00000074736575;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F70736E617274 && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4BA7394()
{
  v1 = *v0;
  v2 = 0x65726576696C6564;
  v3 = 0x6579616C70736964;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79726576696C6564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4BA7448@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BA8C58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BA7470(uint64_t a1)
{
  v2 = sub_1E4BA7C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA74AC(uint64_t a1)
{
  v2 = sub_1E4BA7C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA74E8(uint64_t a1)
{
  v2 = sub_1E4BA7E24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA7524(uint64_t a1)
{
  v2 = sub_1E4BA7E24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA7560(uint64_t a1)
{
  v2 = sub_1E4BA7DD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA759C(uint64_t a1)
{
  v2 = sub_1E4BA7DD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA75D8(uint64_t a1)
{
  v2 = sub_1E4BA7D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA7614(uint64_t a1)
{
  v2 = sub_1E4BA7D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA7650(uint64_t a1)
{
  v2 = sub_1E4BA7D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA768C(uint64_t a1)
{
  v2 = sub_1E4BA7D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA76C8(uint64_t a1)
{
  v2 = sub_1E4BA7CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA7704(uint64_t a1)
{
  v2 = sub_1E4BA7CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSMessage.Disposition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E88, &qword_1E4C13CE0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E90, &qword_1E4C13CE8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E98, &qword_1E4C13CF0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EA0, &qword_1E4C13CF8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EA8, &qword_1E4C13D00);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EB0, &qword_1E4C13D08);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1E4BA7C80();
  sub_1E4BF0ACC();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1E4BA7DD0();
      v31 = v45;
      sub_1E4BF08BC();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1E4BA7E24();
      v31 = v45;
      sub_1E4BF08BC();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1E4BA7D7C();
      v22 = v33;
      v23 = v45;
      sub_1E4BF08BC();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1E4BA7D28();
      v22 = v36;
      v23 = v45;
      sub_1E4BF08BC();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1E4BA7CD4();
      v22 = v39;
      v23 = v45;
      sub_1E4BF08BC();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_1E4BA7C80()
{
  result = qword_1ECF96EB8;
  if (!qword_1ECF96EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96EB8);
  }

  return result;
}

unint64_t sub_1E4BA7CD4()
{
  result = qword_1ECF96EC0;
  if (!qword_1ECF96EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96EC0);
  }

  return result;
}

unint64_t sub_1E4BA7D28()
{
  result = qword_1ECF96EC8;
  if (!qword_1ECF96EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96EC8);
  }

  return result;
}

unint64_t sub_1E4BA7D7C()
{
  result = qword_1ECF96ED0;
  if (!qword_1ECF96ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96ED0);
  }

  return result;
}

unint64_t sub_1E4BA7DD0()
{
  result = qword_1ECF96ED8;
  if (!qword_1ECF96ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96ED8);
  }

  return result;
}

unint64_t sub_1E4BA7E24()
{
  result = qword_1ECF96EE0;
  if (!qword_1ECF96EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96EE0);
  }

  return result;
}

uint64_t RCSMessage.Disposition.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSMessage.Disposition.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EE8, &qword_1E4C13D10);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EF0, &qword_1E4C13D18);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EF8, &qword_1E4C13D20);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96F00, &qword_1E4C13D28);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96F08, &qword_1E4C13D30);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96F10, &unk_1E4C13D38);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E4BA7C80();
  v19 = v61;
  sub_1E4BF0ABC();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_1E4BF088C();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_1E4AE0F18();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_1E4BF06EC();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
    *v34 = &type metadata for RCSMessage.Disposition;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_1E4BA7DD0();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_1E4BF07EC();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_1E4BA7E24();
      v37 = v46;
      sub_1E4BF07EC();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_1E4BA7D7C();
    v38 = v24;
    v39 = v46;
    sub_1E4BF07EC();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_1E4BA7CD4();
    v41 = v56;
    v42 = v46;
    sub_1E4BF07EC();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v67 = 3;
  sub_1E4BA7D28();
  v31 = v46;
  sub_1E4BF07EC();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

unint64_t sub_1E4BA86EC()
{
  result = qword_1ECF96F18;
  if (!qword_1ECF96F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F18);
  }

  return result;
}

unint64_t sub_1E4BA87E4()
{
  result = qword_1ECF96F20;
  if (!qword_1ECF96F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F20);
  }

  return result;
}

unint64_t sub_1E4BA883C()
{
  result = qword_1ECF96F28;
  if (!qword_1ECF96F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F28);
  }

  return result;
}

unint64_t sub_1E4BA8894()
{
  result = qword_1ECF96F30;
  if (!qword_1ECF96F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F30);
  }

  return result;
}

unint64_t sub_1E4BA88EC()
{
  result = qword_1ECF96F38;
  if (!qword_1ECF96F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F38);
  }

  return result;
}

unint64_t sub_1E4BA8944()
{
  result = qword_1ECF96F40;
  if (!qword_1ECF96F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F40);
  }

  return result;
}

unint64_t sub_1E4BA899C()
{
  result = qword_1ECF96F48;
  if (!qword_1ECF96F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F48);
  }

  return result;
}

unint64_t sub_1E4BA89F4()
{
  result = qword_1ECF96F50;
  if (!qword_1ECF96F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F50);
  }

  return result;
}

unint64_t sub_1E4BA8A4C()
{
  result = qword_1ECF96F58;
  if (!qword_1ECF96F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F58);
  }

  return result;
}

unint64_t sub_1E4BA8AA4()
{
  result = qword_1ECF96F60;
  if (!qword_1ECF96F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F60);
  }

  return result;
}

unint64_t sub_1E4BA8AFC()
{
  result = qword_1ECF96F68;
  if (!qword_1ECF96F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F68);
  }

  return result;
}

unint64_t sub_1E4BA8B54()
{
  result = qword_1ECF96F70;
  if (!qword_1ECF96F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F70);
  }

  return result;
}

unint64_t sub_1E4BA8BAC()
{
  result = qword_1ECF96F78;
  if (!qword_1ECF96F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F78);
  }

  return result;
}

unint64_t sub_1E4BA8C04()
{
  result = qword_1ECF96F80[0];
  if (!qword_1ECF96F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF96F80);
  }

  return result;
}

uint64_t sub_1E4BA8C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726576696C6564 && a2 == 0xE900000000000064;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xEE0064656C696146 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6579616C70736964 && a2 == 0xE900000000000064 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E4BF25E0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E4BF2600 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E4BA8E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E4BAA7DC(a3, v25 - v10);
  v12 = sub_1E4BF01FC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E4AE0AE4(v11, &qword_1ECF94930, &unk_1E4C0D790);
  }

  else
  {
    sub_1E4BF01EC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E4BF019C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E4BEFF1C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1E4AE0AE4(a3, &qword_1ECF94930, &unk_1E4C0D790);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E4AE0AE4(a3, &qword_1ECF94930, &unk_1E4C0D790);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E4BA9114@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1E4ADB544(a1, a6);
  sub_1E4ADB544(a2, a6 + 40);
  v12 = type metadata accessor for XPCPeerMessage(0, a4, a5, v11);
  v13 = *(*(a4 - 8) + 32);
  v14 = a6 + *(v12 + 40);

  return v13(v14, a3, a4);
}

uint64_t XPCPeerMessage.reply(throwing:)(void *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CodableResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = a1;
  sub_1E4B65734(a1, AssociatedTypeWitness, AssociatedConformanceWitness, v6, v10);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getWitnessTable();
  sub_1E4BEFD1C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t XPCPeerMessage.reply(returning:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CodableResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v12 - v9, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getWitnessTable();
  sub_1E4BEFD1C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t XPCPeerMessage.replySuccess<>()()
{
  v2[64] = 0;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
  sub_1E4BA95D0();
  sub_1E4BEFD1C();
  return sub_1E4AE0AE4(v2, &qword_1ECF93BA0, &qword_1E4C0BEC0);
}

unint64_t sub_1E4BA95D0()
{
  result = qword_1ECF93BA8;
  if (!qword_1ECF93BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93BA8);
  }

  return result;
}

uint64_t XPCPeerMessage.reply(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  a1(v3 + *(a3 + 40));
  XPCPeerMessage.reply(returning:)(v9, a3);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t XPCPeerMessage.reply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_1E4BF01FC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  v14 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = *(a3 + 16);
  (*(v8 + 32))(v15 + v14, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;

  sub_1E4BA8E24(0, 0, v12, &unk_1E4C14308, v15);
}

uint64_t sub_1E4BA9964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[3] = AssociatedTypeWitness;
  v8[4] = *(AssociatedTypeWitness - 8);
  v14 = swift_task_alloc();
  v8[5] = v14;
  v16 = type metadata accessor for XPCPeerMessage(0, a7, a8, v15);
  v8[6] = v16;
  v17 = *(v16 + 40);
  v20 = (a5 + *a5);
  v18 = swift_task_alloc();
  v8[7] = v18;
  *v18 = v8;
  v18[1] = sub_1E4BA9B10;

  return v20(v14, a4 + v17);
}

uint64_t sub_1E4BA9B10()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E4BA9CB8;
  }

  else
  {
    v2 = sub_1E4BA9C24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4BA9C24()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  XPCPeerMessage.reply(returning:)(v1, v0[6]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E4BA9CB8()
{
  v1 = v0[8];
  XPCPeerMessage.reply(throwing:)(v1, v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E4BA9D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for XPCPeerMessage(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_1E4B33678;

  return sub_1E4BA9964(a1, v12, v13, v4 + v11, v15, v16, v9, v8);
}

uint64_t XPCPeerMessage.processIdentifier.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  *v4.val = v5;
  *&v4.val[4] = v2;
  return audit_token_to_pid(&v4);
}

uint64_t XPCPeerMessage.bundleIdentifier.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = *v1;

  return sub_1E4B35054(v5, v2, v3, v4);
}

uint64_t XPCPeerMessage.satifies(requirement:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));

  return sub_1E4BF04AC();
}

Swift::Bool __swiftcall XPCPeerMessage.satisfies(entitlement:)(TelephonyMessagingKit::Messaging::Entitlement entitlement)
{
  v2 = sub_1E4BEFCEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  sub_1E4BEFCDC();

  v6 = sub_1E4BF04AC();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t AnyXPCPeerMessage.processIdentifier.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  *v4.val = v5;
  *&v4.val[4] = v2;
  return audit_token_to_pid(&v4);
}

uint64_t AnyXPCPeerMessage.bundleIdentifier.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = *v1;

  return sub_1E4B35054(v5, v2, v3, v4);
}

uint64_t AnyXPCPeerMessage.satifies(requirement:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));

  return sub_1E4BF04AC();
}

Swift::Bool __swiftcall AnyXPCPeerMessage.satisfies(entitlement:)(TelephonyMessagingKit::Messaging::Entitlement entitlement)
{
  v2 = sub_1E4BEFCEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  sub_1E4BEFCDC();

  v6 = sub_1E4BF04AC();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1E4BAA2C0(uint64_t a1)
{
  result = sub_1E4BAA770(319, &qword_1ECF97008, &protocol descriptor for XPCReceivedMessageProtocol);
  if (v2 <= 0x3F)
  {
    result = sub_1E4BAA770(319, &qword_1ECF97010, &protocol descriptor for AuditTokenProtocol);
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E4BAA380(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 80) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1E4BAA50C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 80) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v9 + 40) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t sub_1E4BAA770(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1E4BAA7DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BAA84C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E4BAA944;

  return v6(a1);
}

uint64_t sub_1E4BAA944()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E4BAAA3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BAA84C(a1, v4);
}

uint64_t sub_1E4BAAAF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4B33678;

  return sub_1E4BAA84C(a1, v4);
}

uint64_t sub_1E4BAABAC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v42 = a2;
  v41 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RCSConfigurationRequest.Reply(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v13 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v13, qword_1ECF97018);
  v14 = sub_1E4BEFB5C();
  v15 = sub_1E4BF04BC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = v2;
    v17 = v16;
    v39 = swift_slowAlloc();
    v45 = v39;
    *v17 = 136315138;
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v12);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v18 = sub_1E4B30548(v43, v44, &v45);

    *(v17 + 4) = v18;
    v4 = v3;
    _os_log_impl(&dword_1E4AD3000, v14, v15, "Retrieving RCS configuration for %s", v17, 0xCu);
    v19 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1E6921800](v19, -1, -1);
    v20 = v17;
    v5 = v40;
    MEMORY[0x1E6921800](v20, -1, -1);
  }

  v21 = v5[6];
  v22 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v21);
  LOBYTE(v43) = v12;
  v23 = *(v22 + 40);
  v24 = sub_1E4B93E28();
  result = v23(&v43, &type metadata for RCSConfigurationRequest, v24, v21, v22);
  if (!v4)
  {
    v40 = 0;
    sub_1E4BB0F9C(v11, v8, type metadata accessor for RCSService.Configuration.CodableRepresentation);
    v26 = *v8;
    v38 = *(v8 + 1);
    v39 = v26;
    v27 = v8[16];
    v28 = v41;
    v29 = *(v41 + 20);
    v30 = type metadata accessor for RCSService.Configuration(0);
    v31 = v42;
    sub_1E4AF1898(&v8[v29], v42 + v30[5], &qword_1ECF92D68, &unk_1E4BFCDA0);
    v32 = &v8[v28[6]];
    v33 = *v32;
    v34 = v32[8];
    sub_1E4AF1898(&v8[v28[7]], v31 + v30[7], &qword_1ECF92D68, &unk_1E4BFCDA0);
    sub_1E4AF1898(&v8[v28[8]], v31 + v30[8], &qword_1ECF92D68, &unk_1E4BFCDA0);
    result = sub_1E4BB0F3C(v8, type metadata accessor for RCSService.Configuration.CodableRepresentation);
    v35 = v38;
    *v31 = v39;
    *(v31 + 8) = v35;
    *(v31 + 16) = v27;
    v36 = v31 + v30[6];
    *v36 = v33;
    *(v36 + 8) = v34;
  }

  return result;
}

uint64_t sub_1E4BAAF58(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for RCSService.Configuration(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  *(v3 + 64) = swift_task_alloc();
  type metadata accessor for RCSConfigurationRequest.Reply(0);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 105) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E4BAB060, 0, 0);
}

uint64_t sub_1E4BAB060()
{
  v20 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  *(v0 + 80) = __swift_project_value_buffer(v1, qword_1ECF97018);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 105);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    v18 = 0;
    *v6 = 136315138;
    v19 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v5);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v8 = sub_1E4B30548(v18, 0xE000000000000000, &v17);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Retrieving RCS configuration for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E6921800](v7, -1, -1);
    MEMORY[0x1E6921800](v6, -1, -1);
  }

  v9 = *(v0 + 24);
  v10 = v9[6];
  v11 = v9[7];
  __swift_project_boxed_opaque_existential_1(v9 + 3, v10);
  *(v0 + 104) = v5;
  v16 = (*(v11 + 24) + **(v11 + 24));
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  v13 = sub_1E4B93E28();
  *v12 = v0;
  v12[1] = sub_1E4BAB324;
  v14 = *(v0 + 72);

  return v16(v14, v0 + 104, &type metadata for RCSConfigurationRequest, v13, v10, v11);
}

uint64_t sub_1E4BAB324()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E4BAB744;
  }

  else
  {
    v2 = sub_1E4BAB438;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4BAB438()
{
  v28 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v26 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_1E4BB0ED4(v0[9], v1, type metadata accessor for RCSService.Configuration.CodableRepresentation);
  v5 = *v1;
  v25 = *(v1 + 8);
  v24 = *(v1 + 16);
  sub_1E4AF1898(v1 + v2[5], v4 + v3[5], &qword_1ECF92D68, &unk_1E4BFCDA0);
  v6 = v1 + v2[6];
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_1E4AF1898(v1 + v2[7], v4 + v3[7], &qword_1ECF92D68, &unk_1E4BFCDA0);
  sub_1E4AF1898(v1 + v2[8], v4 + v3[8], &qword_1ECF92D68, &unk_1E4BFCDA0);
  sub_1E4BB0F3C(v1, type metadata accessor for RCSService.Configuration.CodableRepresentation);
  *v4 = v5;
  *(v4 + 8) = v25;
  *(v4 + 16) = v24;
  v9 = v4 + v3[6];
  *v9 = v7;
  *(v9 + 8) = v8;
  sub_1E4BB0ED4(v4, v26, type metadata accessor for RCSService.Configuration);
  v10 = sub_1E4BEFB5C();
  v11 = sub_1E4BF04CC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[9];
  v14 = v0[6];
  if (v12)
  {
    v15 = v0[5];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    sub_1E4BB0ED4(v14, v15, type metadata accessor for RCSService.Configuration);
    v18 = sub_1E4BEFF0C();
    v20 = v19;
    sub_1E4BB0F3C(v14, type metadata accessor for RCSService.Configuration);
    v21 = sub_1E4B30548(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1E4AD3000, v10, v11, "Retrieved configuration: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E6921800](v17, -1, -1);
    MEMORY[0x1E6921800](v16, -1, -1);
  }

  else
  {

    sub_1E4BB0F3C(v14, type metadata accessor for RCSService.Configuration);
  }

  sub_1E4BB0F3C(v13, type metadata accessor for RCSConfigurationRequest.Reply);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1E4BAB744()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAB7CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for RCSSendRequest(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for RCSMessage(0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BAB890, 0, 0);
}

uint64_t sub_1E4BAB890()
{
  v35 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[2];
  v3 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v3, qword_1ECF97018);
  sub_1E4BB0ED4(v2, v1, type metadata accessor for RCSMessage);
  v4 = sub_1E4BEFB5C();
  v5 = sub_1E4BF04BC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    v11 = v7 + *(v8 + 28);
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v30 = *v11;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    sub_1E4ADD6D8(v30, v12, v13, v14, v15);
    v16 = RCSHandle.description.getter();
    v18 = v17;
    sub_1E4ADD764(v30, v31, v32, v33, v34);
    sub_1E4BB0F3C(v7, type metadata accessor for RCSMessage);
    v19 = sub_1E4B30548(v16, v18, &v29);

    *(v9 + 4) = v19;
    _os_log_impl(&dword_1E4AD3000, v4, v5, "Sending RCS to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E6921800](v10, -1, -1);
    MEMORY[0x1E6921800](v9, -1, -1);
  }

  else
  {

    sub_1E4BB0F3C(v7, type metadata accessor for RCSMessage);
  }

  v20 = v0[3];
  sub_1E4BB0ED4(v0[2], v0[5], type metadata accessor for RCSMessage);
  v21 = v20[6];
  v22 = v20[7];
  __swift_project_boxed_opaque_existential_1(v20 + 3, v21);
  v28 = (*(v22 + 32) + **(v22 + 32));
  v23 = swift_task_alloc();
  v0[8] = v23;
  v24 = sub_1E4BB0E8C(&qword_1EE2BDED0, type metadata accessor for RCSSendRequest, &protocol conformance descriptor for RCSSendRequest);
  *v23 = v0;
  v23[1] = sub_1E4BABBE4;
  v26 = v0[4];
  v25 = v0[5];

  return v28(v25, v26, v24, v21, v22);
}

uint64_t sub_1E4BABBE4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1E4BABD88;
  }

  else
  {
    v2 = sub_1E4BABCF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4BABCF8()
{
  sub_1E4BB0F3C(*(v0 + 40), type metadata accessor for RCSSendRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BABD88()
{
  sub_1E4BB0F3C(*(v0 + 40), type metadata accessor for RCSSendRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BABE18(uint64_t a1, void *a2)
{
  *(v3 + 144) = v2;
  *(v3 + 216) = *a1;
  *(v3 + 152) = *(a1 + 8);
  *(v3 + 168) = *(a1 + 24);
  *(v3 + 217) = *(a1 + 40);
  *(v3 + 218) = *(a1 + 41);
  v4 = a2[1];
  *(v3 + 184) = *a2;
  *(v3 + 192) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E4BABE68, 0, 0);
}

uint64_t sub_1E4BABE68()
{
  v52 = v0;
  sub_1E4ADD6D8(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 217));
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 217);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v6, qword_1ECF97018);
  sub_1E4ADD6D8(v5, v4, v3, v2, v1);

  v7 = sub_1E4BEFB5C();
  v8 = sub_1E4BF04BC();
  sub_1E4ADD764(v5, v4, v3, v2, v1);

  if (os_log_type_enabled(v7, v8))
  {
    v41 = *(v0 + 192);
    v43 = *(v0 + 184);
    v9 = *(v0 + 217);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    v14 = *(v0 + 216);
    v39 = *(v0 + 218);
    v40 = v14;
    v15 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v15 = 136315906;
    v47 = 0;
    v48 = 0xE000000000000000;
    v42 = v8;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v14);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v16 = sub_1E4B30548(0, 0xE000000000000000, &v46);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    v47 = v13;
    v48 = v12;
    v49 = v10;
    v50 = v11;
    v51 = v9;
    sub_1E4ADD6D8(v13, v12, v10, v11, v9);
    v17 = RCSHandle.description.getter();
    v19 = v18;
    sub_1E4ADD764(v47, v48, v49, v50, v51);
    v20 = sub_1E4B30548(v17, v19, &v46);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    if (v39)
    {
      v21 = 0x52724F6568636163;
    }

    else
    {
      v21 = 0x6C6E4F6568636163;
    }

    if (v39)
    {
      v22 = 0xED000065746F6D65;
    }

    else
    {
      v22 = 0xE900000000000079;
    }

    v23 = sub_1E4B30548(v21, v22, &v46);

    *(v15 + 24) = v23;
    *(v15 + 32) = 2080;
    v47 = 0;
    v48 = 0xE000000000000000;

    sub_1E4BF069C();

    v47 = 0x617265704F534352;
    v48 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v43, v41);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v24 = sub_1E4B30548(v47, v48, &v46);
    v25 = v40;

    *(v15 + 34) = v24;
    _os_log_impl(&dword_1E4AD3000, v7, v42, "Starting remote discovery on [%s], %s, %s with ID: %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v45, -1, -1);
    MEMORY[0x1E6921800](v15, -1, -1);
  }

  else
  {
    v25 = *(v0 + 216);
  }

  v26 = *(v0 + 184);
  v27 = *(v0 + 192);
  v28 = *(v0 + 218);
  v30 = *(v0 + 144);
  LOBYTE(v47) = *(v0 + 217);
  v29 = v47;
  *(v0 + 16) = v25;
  *(v0 + 24) = *(v0 + 152);
  *(v0 + 40) = *(v0 + 168);
  *(v0 + 56) = v29;
  *(v0 + 57) = v28;
  *(v0 + 64) = v26;
  *(v0 + 72) = v27;
  v31 = v30[6];
  v32 = v30[7];
  __swift_project_boxed_opaque_existential_1(v30 + 3, v31);
  v33 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v33;
  v34 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v34;
  v35 = *(v32 + 32);

  v44 = (v35 + *v35);
  v36 = swift_task_alloc();
  *(v0 + 200) = v36;
  v37 = sub_1E4B9E644();
  *v36 = v0;
  v36[1] = sub_1E4BAC380;

  return v44(v0 + 80, &type metadata for RCSCapabilityDiscoveryRequest, v37, v31, v32);
}

uint64_t sub_1E4BAC380()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BAC4BC, 0, 0);
  }

  else
  {
    sub_1E4BA2320(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4BAC4BC()
{
  sub_1E4BA2320(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAC520(uint64_t a1, void *a2)
{
  *(v3 + 144) = v2;
  *(v3 + 224) = *a1;
  *(v3 + 152) = *(a1 + 8);
  *(v3 + 168) = *(a1 + 24);
  *(v3 + 176) = *(a1 + 32);
  v4 = a2[1];
  *(v3 + 192) = *a2;
  *(v3 + 200) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E4BAC568, 0, 0);
}

uint64_t sub_1E4BAC568()
{
  v34 = v0;
  v1 = qword_1ECF92418;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1ECF97018);

  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v29 = *(v0 + 184);
    v7 = *(v0 + 224);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_1E4B30548(v5, v6, &v31);
    *(v8 + 12) = 2080;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v7);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v10 = sub_1E4B30548(v32, v33, &v31);

    *(v8 + 14) = v10;
    *(v8 + 22) = 2080;
    v11 = sub_1E4BB0808(v29);
    v13 = sub_1E4B30548(v11, v12, &v31);

    *(v8 + 24) = v13;
    *(v8 + 32) = 2080;
    v32 = 0;
    v33 = 0xE000000000000000;

    sub_1E4BF069C();

    v32 = 0x617265704F534352;
    v33 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v5, v6);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v14 = sub_1E4B30548(v32, v33, &v31);

    *(v8 + 34) = v14;
    _os_log_impl(&dword_1E4AD3000, v3, v4, "%s] Adding participants: %s, %s, %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v9, -1, -1);
    MEMORY[0x1E6921800](v8, -1, -1);
  }

  else
  {
    v7 = *(v0 + 224);
  }

  v15 = *(v0 + 192);
  v16 = *(v0 + 200);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  *(v0 + 16) = v7;
  *(v0 + 24) = v19;
  *(v0 + 32) = v18;
  *(v0 + 40) = v17;
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v15;
  *(v0 + 72) = v16;
  v21 = v20[6];
  v22 = v20[7];
  __swift_project_boxed_opaque_existential_1(v20 + 3, v21);
  v23 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v23;
  v24 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v24;
  v25 = *(v22 + 32);

  v30 = (v25 + *v25);
  v26 = swift_task_alloc();
  *(v0 + 208) = v26;
  v27 = sub_1E4B1BF70();
  *v26 = v0;
  v26[1] = sub_1E4BAC9B0;

  return v30(v0 + 80, &type metadata for RCSGroupChatAddParticipantsRequest, v27, v21, v22);
}

uint64_t sub_1E4BAC9B0()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BACAEC, 0, 0);
  }

  else
  {
    sub_1E4B1AD88(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4BACAEC()
{
  sub_1E4B1AD88(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BACB50(uint64_t a1, void *a2)
{
  *(v3 + 144) = v2;
  *(v3 + 224) = *a1;
  *(v3 + 152) = *(a1 + 8);
  *(v3 + 168) = *(a1 + 24);
  *(v3 + 176) = *(a1 + 32);
  v4 = a2[1];
  *(v3 + 192) = *a2;
  *(v3 + 200) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E4BACB98, 0, 0);
}

uint64_t sub_1E4BACB98()
{
  v35 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1ECF97018);

  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 192);
    v5 = *(v0 + 200);
    v30 = *(v0 + 184);
    v6 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315906;
    *(v7 + 4) = sub_1E4B30548(v4, v5, &v32);
    *(v7 + 12) = 2080;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v6);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v9 = sub_1E4B30548(v33, v34, &v32);

    *(v7 + 14) = v9;
    *(v7 + 22) = 2080;
    v10 = sub_1E4BB0808(v30);
    v12 = sub_1E4B30548(v10, v11, &v32);

    *(v7 + 24) = v12;
    *(v7 + 32) = 2080;
    v33 = 0;
    v34 = 0xE000000000000000;

    sub_1E4BF069C();

    v33 = 0x617265704F534352;
    v34 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v4, v5);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v13 = sub_1E4B30548(v33, v34, &v32);

    *(v7 + 34) = v13;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "[%s] Removing participants: %s, %s), %s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v8, -1, -1);
    MEMORY[0x1E6921800](v7, -1, -1);
  }

  else
  {
    v6 = *(v0 + 224);
  }

  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v19 = *(v0 + 160);
  v18 = *(v0 + 168);
  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  *(v0 + 16) = v6;
  *(v0 + 24) = v20;
  *(v0 + 32) = v19;
  *(v0 + 40) = v18;
  *(v0 + 48) = v17;
  *(v0 + 56) = v16;
  *(v0 + 64) = v14;
  *(v0 + 72) = v15;
  v22 = v21[6];
  v23 = v21[7];
  __swift_project_boxed_opaque_existential_1(v21 + 3, v22);
  v24 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v24;
  v25 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v25;
  v26 = *(v23 + 32);

  v31 = (v26 + *v26);
  v27 = swift_task_alloc();
  *(v0 + 208) = v27;
  v28 = sub_1E4B1C0C0();
  *v27 = v0;
  v27[1] = sub_1E4BACFF0;

  return v31(v0 + 80, &type metadata for RCSGroupChatRemoveParticipantsRequest, v28, v22, v23);
}

uint64_t sub_1E4BACFF0()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BAD12C, 0, 0);
  }

  else
  {
    sub_1E4B1AEEC(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4BAD12C()
{
  sub_1E4B1AEEC(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAD190(uint64_t a1, uint64_t *a2)
{
  *(v3 + 160) = v2;
  *(v3 + 248) = *a1;
  *(v3 + 168) = *(a1 + 8);
  *(v3 + 184) = *(a1 + 24);
  *(v3 + 192) = *(a1 + 32);
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 208) = *(a1 + 48);
  *(v3 + 216) = v4;
  *(v3 + 224) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1E4BAD1E0, 0, 0);
}

uint64_t sub_1E4BAD1E0()
{
  v34 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1ECF97018);

  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v28 = *(v0 + 200);
    v30 = *(v0 + 208);
    v6 = *(v0 + 248);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315907;
    *(v7 + 4) = sub_1E4B30548(v5, v4, &v31);
    *(v7 + 12) = 2080;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v6);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v9 = sub_1E4B30548(v32, v33, &v31);

    *(v7 + 14) = v9;
    *(v7 + 22) = 2085;
    *(v7 + 24) = sub_1E4B30548(v28, v30, &v31);
    *(v7 + 32) = 2080;
    v32 = 0;
    v33 = 0xE000000000000000;

    sub_1E4BF069C();

    v32 = 0x617265704F534352;
    v33 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v5, v4);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v10 = sub_1E4B30548(v32, v33, &v31);

    *(v7 + 34) = v10;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "%s] Changing subject: %s, %{sensitive}s, %s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v8, -1, -1);
    MEMORY[0x1E6921800](v7, -1, -1);
  }

  else
  {
    v6 = *(v0 + 248);
  }

  v11 = *(v0 + 216);
  v12 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 208);
  v15 = *(v0 + 184);
  v16 = *(v0 + 192);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  *(v0 + 16) = v6;
  *(v0 + 24) = v17;
  *(v0 + 32) = v18;
  *(v0 + 40) = v15;
  *(v0 + 48) = v16;
  *(v0 + 56) = v13;
  *(v0 + 64) = v14;
  *(v0 + 72) = v11;
  *(v0 + 80) = v12;
  v20 = v19[6];
  v21 = v19[7];
  __swift_project_boxed_opaque_existential_1(v19 + 3, v20);
  v22 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v23 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v23;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v22;
  v24 = *(v21 + 32);

  v29 = (v24 + *v24);
  v25 = swift_task_alloc();
  *(v0 + 232) = v25;
  v26 = sub_1E4B1C210();
  *v25 = v0;
  v25[1] = sub_1E4BAD644;

  return v29(v0 + 88, &type metadata for RCSGroupChatChangeSubjectRequest, v26, v20, v21);
}

uint64_t sub_1E4BAD644()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BAD780, 0, 0);
  }

  else
  {
    sub_1E4B1B050(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4BAD780()
{
  sub_1E4B1B050(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAD7E4(uint64_t a1, uint64_t *a2)
{
  *(v3 + 144) = *a1;
  v4 = *(a1 + 8);
  *(v3 + 72) = v2;
  *(v3 + 80) = v4;
  *(v3 + 88) = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  *(v3 + 104) = *(a1 + 32);
  *(v3 + 112) = v5;
  *(v3 + 120) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1E4BAD828, 0, 0);
}

uint64_t sub_1E4BAD828()
{
  v31 = v0;
  v1 = qword_1ECF92418;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1ECF97018);

  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    v21 = *(v0 + 80);
    v22 = *(v0 + 88);
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136316162;
    *(v8 + 4) = sub_1E4B30548(v5, v6, &v28);
    *(v8 + 12) = 2080;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v7);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v10 = sub_1E4B30548(v29, v30, &v28);

    *(v8 + 14) = v10;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_1E4B30548(v21, v22, &v28);
    *(v8 + 32) = 2080;
    *(v8 + 34) = sub_1E4B30548(v23, v24, &v28);
    *(v8 + 42) = 2080;
    v29 = 0;
    v30 = 0xE000000000000000;

    sub_1E4BF069C();

    v29 = 0x617265704F534352;
    v30 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v5, v6);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v11 = sub_1E4B30548(v29, v30, &v28);

    *(v8 + 44) = v11;
    _os_log_impl(&dword_1E4AD3000, v3, v4, "%s] Exiting group chat: %s, %s/%s, %s", v8, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v9, -1, -1);
    MEMORY[0x1E6921800](v8, -1, -1);
  }

  else
  {
    v7 = *(v0 + 144);
  }

  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v25 = *(v0 + 80);
  v27 = *(v0 + 96);
  v14 = *(v0 + 72);
  v15 = v14[6];
  v16 = v14[7];
  __swift_project_boxed_opaque_existential_1(v14 + 3, v15);
  *(v0 + 16) = v7;
  *(v0 + 24) = v25;
  *(v0 + 40) = v27;
  *(v0 + 56) = v13;
  *(v0 + 64) = v12;
  v17 = *(v16 + 32);

  v26 = (v17 + *v17);
  v18 = swift_task_alloc();
  *(v0 + 128) = v18;
  v19 = sub_1E4B1C360();
  *v18 = v0;
  v18[1] = sub_1E4BADC78;

  return v26(v0 + 16, &type metadata for RCSGroupChatLeaveRequest, v19, v15, v16);
}

uint64_t sub_1E4BADC78()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BADDDC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4BADDDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BADE58(uint64_t a1, uint64_t *a2)
{
  *(v3 + 64) = v2;
  *(v3 + 128) = *a1;
  *(v3 + 72) = *(a1 + 8);
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 88) = *(a1 + 24);
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1E4BADE98, 0, 0);
}

uint64_t sub_1E4BADE98()
{
  v32 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1ECF97018);

  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v26 = *(v0 + 72);
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315906;
    *(v7 + 4) = sub_1E4B30548(v4, v5, &v29);
    *(v7 + 12) = 2080;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    v28 = v6;
    sub_1E4AEC058(v6);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v9 = sub_1E4B30548(v30, v31, &v29);

    *(v7 + 14) = v9;
    *(v7 + 22) = 2080;
    v10 = sub_1E4BB0808(v26);
    v12 = sub_1E4B30548(v10, v11, &v29);

    *(v7 + 24) = v12;
    *(v7 + 32) = 2080;
    v30 = 0;
    v31 = 0xE000000000000000;

    sub_1E4BF069C();

    v30 = 0x617265704F534352;
    v31 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v4, v5);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v13 = sub_1E4B30548(v30, v31, &v29);

    *(v7 + 34) = v13;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "%s] Creating group chat: %s, %s, %s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v8, -1, -1);
    MEMORY[0x1E6921800](v7, -1, -1);
  }

  else
  {
    v28 = *(v0 + 128);
  }

  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = *(v0 + 80);
  v17 = *(v0 + 88);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v20 = v18[6];
  v21 = v18[7];
  __swift_project_boxed_opaque_existential_1(v18 + 3, v20);
  *(v0 + 16) = v28;
  *(v0 + 24) = v19;
  *(v0 + 32) = v16;
  *(v0 + 40) = v17;
  *(v0 + 48) = v15;
  *(v0 + 56) = v14;
  v22 = *(v21 + 32);

  v27 = (v22 + *v22);
  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  v24 = sub_1E4B1C4B0();
  *v23 = v0;
  v23[1] = sub_1E4BAE2D0;

  return v27(v0 + 16, &type metadata for RCSGroupChatCreateRequest, v24, v20, v21);
}

uint64_t sub_1E4BAE2D0()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BAE434, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4BAE434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAE4B0(uint64_t a1, uint64_t *a2)
{
  *(v3 + 120) = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v3 + 64) = v2;
  *(v3 + 72) = v4;
  *(v3 + 121) = *(a1 + 24);
  v6 = *a2;
  v7 = a2[1];
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  *(v3 + 96) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1E4BAE4F0, 0, 0);
}

uint64_t sub_1E4BAE4F0()
{
  v23 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1ECF97018);

  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1E4B30548(v5, v4, &v22);
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Sending fetch-chatbot-render-information to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E6921800](v7, -1, -1);
    MEMORY[0x1E6921800](v6, -1, -1);
  }

  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 121);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 120);
  v14 = *(v0 + 64);
  v15 = v14[6];
  v16 = v14[7];
  __swift_project_boxed_opaque_existential_1(v14 + 3, v15);
  *(v0 + 16) = v13;
  *(v0 + 24) = v11;
  *(v0 + 32) = v12;
  *(v0 + 40) = v10;
  *(v0 + 48) = v9;
  *(v0 + 56) = v8;
  v17 = *(v16 + 32);

  v21 = (v17 + *v17);
  v18 = swift_task_alloc();
  *(v0 + 104) = v18;
  v19 = sub_1E4B9E59C();
  *v18 = v0;
  v18[1] = sub_1E4BAE798;

  return v21(v0 + 16, &type metadata for RCSChatbotFetchRenderInformationRequest, v19, v15, v16);
}

uint64_t sub_1E4BAE798()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BAE8E4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4BAE8E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAE954(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  *(v3 + 64) = type metadata accessor for RCSChatbotRenderInformationResponse(0);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v3 + 41) = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  *(v3 + 88) = v5;
  *(v3 + 96) = v6;
  *(v3 + 104) = v7;
  *(v3 + 42) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1E4BAEA1C, 0, 0);
}

uint64_t sub_1E4BAEA1C()
{
  v22 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  *(v0 + 112) = __swift_project_value_buffer(v1, qword_1ECF97018);

  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1E4B30548(v5, v4, &v21);
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Sending read-cached-chatbot-render-information to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E6921800](v7, -1, -1);
    MEMORY[0x1E6921800](v6, -1, -1);
  }

  v8 = *(v0 + 42);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 41);
  v12 = *(v0 + 56);
  v13 = v12[6];
  v14 = v12[7];
  __swift_project_boxed_opaque_existential_1(v12 + 3, v13);
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  *(v0 + 32) = v9;
  *(v0 + 40) = v8;
  v15 = *(v14 + 24);

  v20 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  v17 = sub_1E4B9E5F0();
  *v16 = v0;
  v16[1] = sub_1E4BAECBC;
  v18 = *(v0 + 88);

  return v20(v18, v0 + 16, &type metadata for RCSChatbotReadCachedRenderInformationRequest, v17, v13, v14);
}

uint64_t sub_1E4BAECBC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1E4BAF000;
  }

  else
  {

    v2 = sub_1E4BAEDD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4BAEDD8()
{
  v16 = v0;
  sub_1E4BB0ED4(v0[11], v0[10], type metadata accessor for RCSChatbotRenderInformationResponse);
  v1 = sub_1E4BEFB5C();
  v2 = sub_1E4BF04BC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  if (v3)
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    sub_1E4BB0ED4(v4, v5, type metadata accessor for RCSChatbotRenderInformationResponse);
    v8 = sub_1E4BEFF0C();
    v10 = v9;
    sub_1E4BB0F3C(v4, type metadata accessor for RCSChatbotRenderInformationResponse);
    v11 = sub_1E4B30548(v8, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1E4AD3000, v1, v2, "Service responded with %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E6921800](v7, -1, -1);
    MEMORY[0x1E6921800](v6, -1, -1);
  }

  else
  {

    sub_1E4BB0F3C(v4, type metadata accessor for RCSChatbotRenderInformationResponse);
  }

  v12 = v0[11];
  sub_1E4AF1898(v12, v0[6], &qword_1ECF95F10, &qword_1E4C0E7F0);
  sub_1E4BB0F3C(v12, type metadata accessor for RCSChatbotRenderInformationResponse);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E4BAF000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAF08C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for RCSService.SuggestionResponse(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for RCSSendSuggestionResponseRequest(0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BAF150, 0, 0);
}

uint64_t sub_1E4BAF150()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_1E4BB0ED4(v0[2], v2, type metadata accessor for RCSService.SuggestionResponse);
  v5 = *v2;
  v6 = *(v2 + 40);
  v20 = *(v2 + 48);
  v7 = *(v2 + 64);
  v8 = *(v2 + 72);
  v9 = *(v3 + 32);
  v10 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  v18 = *(v2 + 24);
  v19 = *(v2 + 8);
  sub_1E4BB0F9C(v2 + v9, v1 + *(v10 + 32), type metadata accessor for RCSService.Business.Suggestion);
  *v1 = v5;
  *(v1 + 24) = v18;
  *(v1 + 8) = v19;
  *(v1 + 40) = v6;
  *(v1 + 48) = v20;
  *(v1 + 64) = v7;
  *(v1 + 72) = v8;
  v11 = v4[6];
  v12 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v11);
  v21 = (*(v12 + 32) + **(v12 + 32));
  v13 = swift_task_alloc();
  v0[8] = v13;
  v14 = sub_1E4BB0E8C(&qword_1EE2BD990, type metadata accessor for RCSSendSuggestionResponseRequest, &protocol conformance descriptor for RCSSendSuggestionResponseRequest);
  *v13 = v0;
  v13[1] = sub_1E4BAF368;
  v16 = v0[6];
  v15 = v0[7];

  return v21(v15, v16, v14, v11, v12);
}

uint64_t sub_1E4BAF368()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1E4BAF50C;
  }

  else
  {
    v2 = sub_1E4BAF47C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4BAF47C()
{
  sub_1E4BB0F3C(*(v0 + 56), type metadata accessor for RCSSendSuggestionResponseRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAF50C()
{
  sub_1E4BB0F3C(*(v0 + 56), type metadata accessor for RCSSendSuggestionResponseRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAF59C(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 32) = type metadata accessor for RCSService.ReportSpamRequest(0);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = type metadata accessor for RCSReportSpamRequest(0);
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  *(v4 + 72) = v9;
  *(v4 + 96) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1E4BAF680, 0, 0);
}

uint64_t sub_1E4BAF680()
{
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1ECF97018);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Reporting RCS message as spam.", v4, 2u);
    MEMORY[0x1E6921800](v4, -1, -1);
  }

  v31 = *(v0 + 96);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v30 = v8;
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);

  sub_1E4BB0ED4(v11, v9, type metadata accessor for RCSService.ReportSpamRequest);
  v13 = (v7 + *(v8 + 20));
  *v13 = v6;
  v13[1] = v5;
  sub_1E4BB0ED4(v9, v7, type metadata accessor for RCSMessage);
  v14 = (v9 + v10[5]);
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v8) = *(v9 + v10[6]);
  v17 = (v9 + v10[7]);
  v19 = *v17;
  v18 = v17[1];

  sub_1E4AE4B24(v15, v16);

  sub_1E4BB0F3C(v9, type metadata accessor for RCSService.ReportSpamRequest);
  v20 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v21 = (v7 + v20[5]);
  *v21 = v15;
  v21[1] = v16;
  *(v7 + v20[6]) = v8;
  v22 = (v7 + v20[7]);
  *v22 = v19;
  v22[1] = v18;
  *(v7 + *(v30 + 24)) = v31;
  v23 = v12[6];
  v24 = v12[7];
  __swift_project_boxed_opaque_existential_1(v12 + 3, v23);
  v32 = (*(v24 + 32) + **(v24 + 32));
  v25 = swift_task_alloc();
  *(v0 + 80) = v25;
  v26 = sub_1E4BB0E8C(&qword_1EE2BDC90, type metadata accessor for RCSReportSpamRequest, &protocol conformance descriptor for RCSReportSpamRequest);
  *v25 = v0;
  v25[1] = sub_1E4BAF9A4;
  v28 = *(v0 + 48);
  v27 = *(v0 + 56);

  return v32(v27, v28, v26, v23, v24);
}

uint64_t sub_1E4BAF9A4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1E4BAFB48;
  }

  else
  {
    v2 = sub_1E4BAFAB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4BAFAB8()
{
  sub_1E4BB0F3C(*(v0 + 56), type metadata accessor for RCSReportSpamRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAFB48()
{
  sub_1E4BB0F3C(*(v0 + 56), type metadata accessor for RCSReportSpamRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BAFBD8(uint64_t a1, void *a2)
{
  *(v3 + 176) = v2;
  *(v3 + 264) = *a1;
  *(v3 + 184) = *(a1 + 8);
  *(v3 + 200) = *(a1 + 24);
  *(v3 + 265) = *(a1 + 40);
  v4 = *(a1 + 56);
  *(v3 + 216) = *(a1 + 48);
  *(v3 + 224) = v4;
  v5 = a2[1];
  *(v3 + 232) = *a2;
  *(v3 + 240) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1E4BAFC28, 0, 0);
}

uint64_t sub_1E4BAFC28()
{
  v35 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 265);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v6, qword_1ECF97018);
  sub_1E4ADD6D8(v5, v4, v3, v2, v1);

  v7 = sub_1E4BEFB5C();
  v8 = sub_1E4BF04BC();
  sub_1E4ADD764(v5, v4, v3, v2, v1);

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;

    sub_1E4BF069C();

    strcpy(v34, "RCSMessageID(");
    HIWORD(v34[1]) = -4864;
    MEMORY[0x1E69205B0](v10, v9);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v13 = sub_1E4B30548(v34[0], v34[1], &v33);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_1E4AD3000, v7, v8, "[%s] Revoking RCS message", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E6921800](v12, -1, -1);
    MEMORY[0x1E6921800](v11, -1, -1);
  }

  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  v16 = *(v0 + 216);
  v17 = *(v0 + 224);
  v18 = *(v0 + 265);
  v20 = *(v0 + 200);
  v19 = *(v0 + 208);
  v21 = *(v0 + 184);
  v22 = *(v0 + 192);
  v23 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 264);
  *(v0 + 24) = v21;
  *(v0 + 32) = v22;
  *(v0 + 40) = v20;
  *(v0 + 48) = v19;
  *(v0 + 56) = v18;
  *(v0 + 64) = v16;
  *(v0 + 72) = v17;
  *(v0 + 80) = v14;
  *(v0 + 88) = v15;
  v24 = v23[7];
  v32 = v23[6];
  __swift_project_boxed_opaque_existential_1(v23 + 3, v32);
  v25 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v25;
  *(v0 + 160) = *(v0 + 80);
  v26 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v26;
  v27 = *(v24 + 32);

  sub_1E4ADD6D8(v21, v22, v20, v19, v18);

  v31 = (v27 + *v27);
  v28 = swift_task_alloc();
  *(v0 + 248) = v28;
  v29 = sub_1E4B967F8();
  *v28 = v0;
  v28[1] = sub_1E4BAFFC4;

  return v31(v0 + 96, &type metadata for RCSRevokeMessageRequest, v29, v32, v24);
}

uint64_t sub_1E4BAFFC4()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BB0100, 0, 0);
  }

  else
  {
    sub_1E4B9674C(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4BB0100()
{
  sub_1E4B9674C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BB0164(uint64_t *a1, _BYTE *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 56) = v3;
  *(v4 + 64) = v5;
  *(v4 + 112) = *a2;
  v7 = *a3;
  v8 = a3[1];
  *(v4 + 72) = v6;
  *(v4 + 80) = v7;
  *(v4 + 88) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1E4BB019C, 0, 0);
}

uint64_t sub_1E4BB019C()
{
  v27 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1ECF97018);

  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 112);
    v6 = *(v0 + 64);
    v22 = *(v0 + 72);
    v24 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    v26[0] = 0;
    *v7 = 136315651;
    v26[1] = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v5);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v9 = sub_1E4B30548(v26[0], 0xE000000000000000, &v25);

    *(v7 + 4) = v9;
    *(v7 + 12) = 2085;
    *(v7 + 14) = sub_1E4B30548(v6, v22, &v25);
    *(v7 + 22) = 2080;
    v26[0] = 0;
    v26[1] = 0xE000000000000000;

    sub_1E4BF069C();

    strcpy(v26, "RCSMessageID(");
    HIWORD(v26[1]) = -4864;
    MEMORY[0x1E69205B0](v24, v4);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v10 = sub_1E4B30548(v26[0], v26[1], &v25);

    *(v7 + 24) = v10;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Sending device specifics for %s, to: %{sensitive}s, message ID: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v8, -1, -1);
    MEMORY[0x1E6921800](v7, -1, -1);
  }

  else
  {
    v5 = *(v0 + 112);
  }

  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 56);
  v16 = v15[6];
  v17 = v15[7];
  __swift_project_boxed_opaque_existential_1(v15 + 3, v16);
  *(v0 + 16) = v5;
  *(v0 + 24) = v12;
  *(v0 + 32) = v11;
  *(v0 + 40) = v14;
  *(v0 + 48) = v13;
  v18 = *(v17 + 32);

  v23 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v0 + 96) = v19;
  v20 = sub_1E4AE31BC();
  *v19 = v0;
  v19[1] = sub_1E4BB0584;

  return v23(v0 + 16, &type metadata for RCSSendDeviceSpecificsRequest, v20, v16, v17);
}

uint64_t sub_1E4BB0584()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BB06D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4BB06D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BB0740()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF97018);
  v1 = __swift_project_value_buffer(v0, qword_1ECF97018);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4BB0808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E4BB09F4(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1E4BB09F4((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92FE0, &qword_1E4BFDD48);
  sub_1E4BB0A14();
  v9 = sub_1E4BEFDEC();
  v11 = v10;

  MEMORY[0x1E69205B0](v9, v11);

  MEMORY[0x1E69205B0](93, 0xE100000000000000);
  return 91;
}

void *sub_1E4BB0954(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4BB0B98(a1, a2, a3, *v3, &qword_1ECF92EB0, &unk_1E4BFDC40, &qword_1ECF92EB8, &qword_1E4C063F0);
  *v3 = result;
  return result;
}

char *sub_1E4BB0994(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4BB0A78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E4BB09B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4BB0B98(a1, a2, a3, *v3, &qword_1ECF92F38, &qword_1E4BFDCC8, &qword_1ECF92F40, &qword_1E4BFDCD0);
  *v3 = result;
  return result;
}

char *sub_1E4BB09F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4BB0D80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1E4BB0A14()
{
  result = qword_1ECF97030;
  if (!qword_1ECF97030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92FE0, &qword_1E4BFDD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97030);
  }

  return result;
}

char *sub_1E4BB0A78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97040, &qword_1E4C14468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E4BB0B98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1E4BB0D80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97038, &qword_1E4C14410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E4BB0E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4BB0ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BB0F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4BB0F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4BB1004(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1E4BF06FC();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1E4BB1304(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned __int8 *sub_1E4BB1304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1E4BEFFFC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E4BB1890(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E4BF06FC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E4BB1890(uint64_t a1, unint64_t a2)
{
  v2 = sub_1E4BF000C();
  v6 = sub_1E4BB1910(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1E4BB1910(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1E4BF054C();
    if (!v9 || (v10 = v9, v11 = sub_1E4B30988(v9, 0), v12 = sub_1E4BB1A68(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1E4BEFF3C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1E4BEFF3C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1E4BF06FC();
LABEL_4:

  return sub_1E4BEFF3C();
}

unint64_t sub_1E4BB1A68(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1E4BB1C88(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E4BEFFBC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1E4BF06FC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1E4BB1C88(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1E4BEFF9C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1E4BB1C88(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E4BEFFCC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E69205F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1E4BB1D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97048, &qword_1E4C14470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v78 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97050, &qword_1E4C14478);
  v84 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v8 = &v78 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97058, &qword_1E4C14480);
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v10 = &v78 - v9;
  v11 = sub_1E4BEF9BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E4BEFEEC();
  MEMORY[0x1EEE9AC00](v15 - 8);

  v17 = sub_1E4B201AC(a1, a2, 0);
  result = 0;
  if (v16 >> 60 != 15)
  {
    v19 = v16;
    sub_1E4BEFEDC();
    v20 = sub_1E4BEFEBC();
    if (!v21)
    {
      sub_1E4AE4BD4(v17, v19);
      return 0;
    }

    v80 = v17;
    v86 = v20;
    v87 = v21;
    sub_1E4BEF9AC();
    sub_1E4B20460();
    sub_1E4BF056C();
    (*(v12 + 8))(v14, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97060, &qword_1E4C14488);
    sub_1E4BEFB1C();
    v22 = v83;
    sub_1E4BEFB2C();

    v23 = v84;
    v24 = v82;
    v25 = (*(v84 + 48))(v6, 1, v82);
    if (v25 == 1)
    {
      (*(v81 + 8))(v10, v22);
      sub_1E4AE4BD4(v80, v19);
      sub_1E4BB274C(v6);
      return 0;
    }

    (*(v23 + 32))(v8, v6, v24);
    sub_1E4BEFB3C();
    v26 = v88;
    v27 = v89;
    v28 = v90;
    v29 = v91;

    v30 = MEMORY[0x1E6920570](v26, v27, v28, v29);
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    v34 = v30 & 0xFFFFFFFFFFFFLL;
    if ((v32 & 0x2000000000000000) != 0)
    {
      v35 = HIBYTE(v32) & 0xF;
    }

    else
    {
      v35 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35)
    {
      sub_1E4AE4BD4(v80, v19);

      v56 = v84;
      v36 = v8;
      goto LABEL_73;
    }

    if ((v32 & 0x1000000000000000) != 0)
    {
      v85 = 0;
      v79 = sub_1E4BB1304(v30, v32, 10);
      v59 = v58;

      v36 = v8;
      if (v59)
      {
        goto LABEL_72;
      }

      goto LABEL_78;
    }

    v36 = v8;
    if ((v32 & 0x2000000000000000) != 0)
    {
      v86 = v30;
      v87 = v32 & 0xFFFFFFFFFFFFFFLL;
      if (v30 == 43)
      {
        if (v33)
        {
          if (--v33)
          {
            v79 = 0;
            v47 = &v86 + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                break;
              }

              v49 = 10 * v79;
              if ((v79 * 10) >> 64 != (10 * v79) >> 63)
              {
                break;
              }

              v79 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                break;
              }

              ++v47;
              if (!--v33)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_86:
        __break(1u);
        return result;
      }

      if (v30 != 45)
      {
        if (v33)
        {
          v79 = 0;
          v52 = &v86;
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              break;
            }

            v54 = 10 * v79;
            if ((v79 * 10) >> 64 != (10 * v79) >> 63)
            {
              break;
            }

            v79 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              break;
            }

            v52 = (v52 + 1);
            if (!--v33)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v33)
      {
        if (--v33)
        {
          v79 = 0;
          v41 = &v86 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v79;
            if ((v79 * 10) >> 64 != (10 * v79) >> 63)
            {
              break;
            }

            v79 = v43 - v42;
            if (__OFSUB__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v33)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((v30 & 0x1000000000000000) != 0)
      {
        result = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1E4BF06FC();
      }

      v37 = *result;
      if (v37 == 43)
      {
        if (v34 >= 1)
        {
          v33 = v34 - 1;
          if (v34 != 1)
          {
            if (result)
            {
              v79 = 0;
              v44 = result + 1;
              while (1)
              {
                v45 = *v44 - 48;
                if (v45 > 9)
                {
                  goto LABEL_70;
                }

                v46 = 10 * v79;
                if ((v79 * 10) >> 64 != (10 * v79) >> 63)
                {
                  goto LABEL_70;
                }

                v79 = v46 + v45;
                if (__OFADD__(v46, v45))
                {
                  goto LABEL_70;
                }

                ++v44;
                if (!--v33)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_70;
        }

        goto LABEL_85;
      }

      if (v37 != 45)
      {
        if (v34)
        {
          if (result)
          {
            v79 = 0;
            while (1)
            {
              v50 = *result - 48;
              if (v50 > 9)
              {
                goto LABEL_70;
              }

              v51 = 10 * v79;
              if ((v79 * 10) >> 64 != (10 * v79) >> 63)
              {
                goto LABEL_70;
              }

              v79 = v51 + v50;
              if (__OFADD__(v51, v50))
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v34)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_70:
        v79 = 0;
        LOBYTE(v33) = 1;
        goto LABEL_71;
      }

      if (v34 >= 1)
      {
        v33 = v34 - 1;
        if (v34 != 1)
        {
          if (result)
          {
            v79 = 0;
            v38 = result + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                goto LABEL_70;
              }

              v40 = 10 * v79;
              if ((v79 * 10) >> 64 != (10 * v79) >> 63)
              {
                goto LABEL_70;
              }

              v79 = v40 - v39;
              if (__OFSUB__(v40, v39))
              {
                goto LABEL_70;
              }

              ++v38;
              if (!--v33)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_74:
          v79 = 0;
LABEL_75:
          LOBYTE(v33) = 0;
LABEL_71:
          v85 = v33;
          v55 = v33;

          if (v55)
          {
LABEL_72:
            sub_1E4AE4BD4(v80, v19);
            v56 = v84;
LABEL_73:
            v57 = v83;
            (*(v56 + 8))(v36, v82);
            (*(v81 + 8))(v10, v57);
            return 0;
          }

LABEL_78:
          v60 = v82;
          sub_1E4BEFB3C();
          v61 = v92;
          v62 = v36;
          v63 = v93;
          v64 = v94;
          v65 = v95;

          v66 = MEMORY[0x1E6920570](v61, v63, v64, v65);
          v68 = v67;

          v69 = sub_1E4BB1004(v66, v68);
          if ((v70 & 1) == 0)
          {
            v71 = v69;
            sub_1E4BEFB3C();

            v72 = MEMORY[0x1E6920570](v96, v97, v98, v99);
            v74 = v73;

            v75 = sub_1E4BB1004(v72, v74);
            if ((v76 & 1) == 0)
            {
              GenericRGB = CGColorCreateGenericRGB(v79 / 255.0, v71 / 255.0, v75 / 255.0, 1.0);
              sub_1E4AE4BD4(v80, v19);
              (*(v84 + 8))(v62, v60);
              (*(v81 + 8))(v10, v83);
              return GenericRGB;
            }
          }

          sub_1E4AE4BD4(v80, v19);
          (*(v84 + 8))(v62, v60);
          (*(v81 + 8))(v10, v83);
          return 0;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  return result;
}

uint64_t sub_1E4BB274C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97048, &qword_1E4C14470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4BB27B4()
{
  if (*v0)
  {
    return 7305076;
  }

  else
  {
    return 6647407;
  }
}

uint64_t sub_1E4BB27D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6647407 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7305076 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4BB28B4(uint64_t a1)
{
  v2 = sub_1E4BB2CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB28F0(uint64_t a1)
{
  v2 = sub_1E4BB2CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB292C(uint64_t a1)
{
  v2 = sub_1E4BB2D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB2968(uint64_t a1)
{
  v2 = sub_1E4BB2D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB29A4(uint64_t a1)
{
  v2 = sub_1E4BB2D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB29E0(uint64_t a1)
{
  v2 = sub_1E4BB2D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CellularServiceID.SimSlot.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97068, &qword_1E4C14490);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97070, &qword_1E4C14498);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97078, &qword_1E4C144A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB2CCC();
  sub_1E4BF0ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E4BB2D20();
    v14 = v18;
    sub_1E4BF08BC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E4BB2D74();
    sub_1E4BF08BC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E4BB2CCC()
{
  result = qword_1ECF97080;
  if (!qword_1ECF97080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97080);
  }

  return result;
}

unint64_t sub_1E4BB2D20()
{
  result = qword_1ECF97088;
  if (!qword_1ECF97088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97088);
  }

  return result;
}

unint64_t sub_1E4BB2D74()
{
  result = qword_1ECF97090;
  if (!qword_1ECF97090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97090);
  }

  return result;
}

uint64_t CellularServiceID.SimSlot.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97098, &qword_1E4C144A8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF970A0, &qword_1E4C144B0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF970A8, &unk_1E4C144B8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB2CCC();
  v12 = v31;
  sub_1E4BF0ABC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E4BF088C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E4AE0F10();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E4BF06EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v22 = &type metadata for CellularServiceID.SimSlot;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E4BB2D20();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E4BB2D74();
        sub_1E4BF07EC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1E4BB3300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746F6C536D6973 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4BB3388(uint64_t a1)
{
  v2 = sub_1E4BB354C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB33C4(uint64_t a1)
{
  v2 = sub_1E4BB354C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CellularServiceID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF970B0, &qword_1E4C144C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB354C();
  sub_1E4BF0ACC();
  v10 = v7;
  sub_1E4BB35A0();
  sub_1E4BF093C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E4BB354C()
{
  result = qword_1ECF970B8;
  if (!qword_1ECF970B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970B8);
  }

  return result;
}

unint64_t sub_1E4BB35A0()
{
  result = qword_1ECF970C0;
  if (!qword_1ECF970C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970C0);
  }

  return result;
}

uint64_t CellularServiceID.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF970C8, &unk_1E4C144D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB354C();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4BB37BC();
    sub_1E4BF087C();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4BB37BC()
{
  result = qword_1ECF970D0;
  if (!qword_1ECF970D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970D0);
  }

  return result;
}

uint64_t CellularServiceID.description.getter()
{
  v1 = *v0;
  sub_1E4BF069C();
  MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
  sub_1E4AEC058(v1);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1E4BB3894()
{
  v1 = *v0;
  sub_1E4BF069C();
  MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
  sub_1E4AEC058(v1);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0;
}

uint64_t CellularServiceID.SimSlot.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F78, &unk_1E4C05E60);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6530];
  *(v2 + 16) = xmmword_1E4BFCCE0;
  v4 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  v5 = 1;
  if (v1)
  {
    v5 = 2;
  }

  *(v2 + 32) = v5;

  return sub_1E4BEFECC();
}

unint64_t sub_1E4BB39C0()
{
  result = qword_1ECF970D8;
  if (!qword_1ECF970D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970D8);
  }

  return result;
}

unint64_t sub_1E4BB3A18()
{
  result = qword_1ECF970E0;
  if (!qword_1ECF970E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970E0);
  }

  return result;
}

unint64_t sub_1E4BB3AD4()
{
  result = qword_1ECF970E8;
  if (!qword_1ECF970E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970E8);
  }

  return result;
}