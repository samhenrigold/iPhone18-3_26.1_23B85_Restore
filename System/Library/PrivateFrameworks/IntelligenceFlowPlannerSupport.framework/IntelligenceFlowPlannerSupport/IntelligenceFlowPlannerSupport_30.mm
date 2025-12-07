void Session.Transcript.formingQueryEvent(id:clientRequestId:_:)()
{
  sub_22BE19460();
  sub_22C18F9F4(v6, v7, v8);
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE3100C();
  v11 = sub_22C26E1D4();
  sub_22BE187D0();
  v14 = v12 + 16;
  v13 = *(v12 + 16);
  sub_22C18F300();
  v13();
  type metadata accessor for Session.Event(0);
  sub_22C18E864();
  sub_22C18F9C4();
  v13();
  v41 = v0;
  sub_22C18F300();
  v13();
  sub_22BE19DC4(v2, 0, 1, v11);
  sub_22BE1C058();
  sub_22BE1A964(v4, v1 + v15);
  v16 = sub_22C18FAA8();
  v18 = (v5 + v17);
  v19 = *v18;
  v20 = v18[1];
  v22 = *(v5 + v21 + 8);
  v39 = *(v5 + v21);
  v23 = (v5 + *(v16 + 28));
  v36 = *v23;
  v24 = (v1 + *(v3 + 48));
  v37 = v23[1];
  v38 = v19;

  v40 = v22;

  sub_22C26E134();
  v25 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v26 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C(&qword_28106E038);
  }

  sub_22BE199F4(v11, qword_28108A1E0);
  v27 = sub_22BE39FFC();
  v28 = type metadata accessor for Timepoint(v27);
  sub_22C18FD4C();
  v13();
  *(v24 + *(v28 + 20)) = v25;
  *(v24 + *(v28 + 24)) = v26;
  sub_22BE340C8();
  v29 = sub_22C272E84();
  sub_22BE3AE2C();
  sub_22BE19DC4(v30, v31, v32, v33);
  sub_22C18FEE8();
  sub_22BE2343C();
  sub_22BE40678();
  *v34 = v38;
  v34[1] = v20;
  v35 = (v1 + *(v3 + 40));
  *v35 = v39;
  v35[1] = v40;
  *v24 = v36;
  v24[1] = v37;
  *(v1 + v14) = xmmword_22C2B7780;
  sub_22C18E7C8();
  sub_22C1900FC();
  v29(v41, v11);
  sub_22BE1AABC();
}

uint64_t Session.Event.init(id:sessionId:queryEventId:payload:clientRequestId:clientSessionId:clientApplicationId:clientGroupId:timepoint:sender:postingSpan:initiatedSpans:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  v18 = type metadata accessor for Session.Event(0);
  v19 = sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v20, v21, v22, v19);
  v23 = (a7 + v18[11]);
  v24 = (a7 + v18[13]);
  v25 = a7 + v18[14];
  sub_22BE1BC24();
  v27 = *(v26 + 32);
  v28 = sub_22BE19454();
  v27(v28);
  (v27)(a7 + v18[5], a1, v19);
  sub_22BE2343C();
  sub_22BE1A054();
  sub_22C171FA8(a2, a7 + v29);
  v30 = (a7 + v18[8]);
  *v30 = a3;
  v30[1] = a4;
  v31 = (a7 + v18[9]);
  *v31 = a5;
  v31[1] = a6;
  v32 = (a7 + v18[10]);
  *v32 = a8;
  v32[1] = a9;
  *v23 = a10;
  v23[1] = a11;
  sub_22BE38554();
  result = sub_22C171FA8(a12, v33);
  *v24 = a13;
  v24[1] = a14;
  *v25 = a15;
  *(v25 + 8) = a16 & 1;
  *(a7 + v18[15]) = a17;
  return result;
}

void Session.Transcript.formingQuerylessEvent(clientRequestId:_:)()
{
  sub_22BE19460();
  v3 = v1;
  v5 = v4;
  v49 = v6;
  v50 = v7;
  v9 = v8;
  v10 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1AEF0();
  v12 = type metadata accessor for PreassignedEventID(0);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE197B8();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  v14 = sub_22C26E1D4();
  sub_22BE187D0();
  v47 = v15;
  v16 = *(v15 + 16);
  v48 = v0;
  sub_22C18F300();
  v16();
  type metadata accessor for Session.Event(0);
  sub_22C18E864();
  v46 = v16;
  (v16)(v9 + v17, v3, v14);
  sub_22BE3AE2C();
  sub_22BE19DC4(v18, v19, v20, v21);
  sub_22BE1C058();
  sub_22BE1A964(v5, v9 + v22);
  v23 = sub_22C18FAA8();
  v25 = *(v3 + v24 + 8);
  v44 = *(v3 + v24);
  v26 = (v3 + *(v23 + 28));
  v27 = v26[1];
  v43 = *v26;
  v28 = v9 + v2[12];

  v45 = v25;

  sub_22C26E134();
  v29 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v30 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C(&qword_28106E038);
  }

  sub_22BE199F4(v14, qword_28108A1E0);
  v31 = sub_22BE39FFC();
  v32 = type metadata accessor for Timepoint(v31);
  sub_22C18FD4C();
  v46();
  *(v28 + *(v32 + 20)) = v29;
  *(v28 + *(v32 + 24)) = v30;
  sub_22BE340C8();
  v33 = sub_22C272E84();
  sub_22BE3AE2C();
  sub_22BE19DC4(v34, v35, v36, v37);
  v38 = (v9 + v2[11]);
  v39 = v2[13];
  sub_22BE2343C();
  v40 = (v9 + v2[8]);
  *v40 = v49;
  v40[1] = v50;
  sub_22C18FE38((v9 + v2[9]));
  v41 = (v9 + v2[10]);
  *v41 = v44;
  v41[1] = v45;
  *v38 = v43;
  v38[1] = v27;
  *(v9 + v39) = xmmword_22C2B7780;
  sub_22C18E7C8();
  *(v9 + v2[15]) = v33;
  v42 = *(v47 + 8);

  v42(v48, v14);
  sub_22BE1AABC();
}

void Session.Transcript.formingOriginatingEventForTesting(_:clientRequestId:sender:)()
{
  sub_22BE19460();
  v52 = v2;
  v53 = v3;
  v50 = v4;
  v51 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE3100C();
  v13 = type metadata accessor for PreassignedEventID(v12);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE197B8();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  v15 = sub_22C26E1D4();
  sub_22BE187D0();
  v48 = v16;
  v17 = *(v16 + 16);
  v49 = v0;
  v17(v9, v0, v15);
  v18 = type metadata accessor for Session.Event(0);
  v47 = v17;
  v17(v9 + v18[5], v1, v15);
  sub_22BE1A140();
  sub_22BE19DC4(v19, v20, v21, v15);
  sub_22BE1C058();
  sub_22BE1A964(v7, v9 + v22);
  v23 = sub_22C18FAA8();
  v25 = (v1 + v24);
  v26 = *v25;
  v27 = v25[1];
  v28 = (v1 + *(v23 + 28));
  v29 = v28[1];
  v44 = *v28;
  v45 = v26;
  v30 = v9 + v18[12];

  v46 = v27;

  sub_22C26E134();
  v31 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v32 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C(&qword_28106E038);
  }

  v33 = sub_22BE199F4(v15, qword_28108A1E0);
  v34 = type metadata accessor for Timepoint(0);
  v47(v30 + v34[7], v33, v15);
  *(v30 + v34[5]) = v31;
  *(v30 + v34[6]) = v32;
  sub_22BE340C8();
  v35 = sub_22C272E84();
  sub_22BE1A140();
  sub_22BE19DC4(v36, v37, v38, v15);
  v39 = (v9 + v18[11]);
  v40 = (v9 + v18[13]);
  sub_22BE2343C();
  v41 = (v9 + v18[8]);
  *v41 = v50;
  v41[1] = v52;
  v42 = (v9 + v18[9]);
  *v42 = v45;
  v42[1] = v46;
  sub_22C18FE38((v9 + v18[10]));
  *v39 = v44;
  v39[1] = v29;
  *v40 = v51;
  v40[1] = v53;
  sub_22C18E7C8();
  *(v9 + v18[15]) = v35;
  v43 = *(v48 + 8);

  v43(v49, v15);
  sub_22BE1AABC();
}

void Session.Transcript.formingOriginatingEventForTesting(id:_:clientRequestId:sender:)()
{
  sub_22BE19460();
  v47 = v2;
  v45 = v4;
  v46 = v3;
  v44 = v5;
  sub_22BE18378();
  v7 = v6;
  v8 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1AEF0();
  v10 = sub_22C26E1D4();
  sub_22BE187D0();
  v43 = v11;
  v12 = *(v11 + 16);
  (v12)(v7, v1, v10);
  v13 = type metadata accessor for Session.Event(0);
  (v12)(v7 + v13[5], v1, v10);
  sub_22BE1A140();
  sub_22BE19DC4(v14, v15, v16, v10);
  sub_22BE1C058();
  sub_22BE1A964(v0, v7 + v17);
  v18 = sub_22C18FAA8();
  v20 = (v1 + v19);
  v21 = *v20;
  v22 = v20[1];
  v23 = (v1 + *(v18 + 28));
  v24 = v23[1];
  v40 = *v23;
  v41 = v21;
  v25 = v7 + v13[12];

  v42 = v22;

  sub_22C18FE2C();

  sub_22C26E134();
  v26 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v27 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C(&qword_28106E038);
  }

  sub_22BE199F4(v10, qword_28108A1E0);
  v28 = sub_22BE39FFC();
  v29 = type metadata accessor for Timepoint(v28);
  sub_22C18FD58();
  v12();
  *(v25 + *(v29 + 20)) = v26;
  *(v25 + *(v29 + 24)) = v27;
  sub_22BE340C8();
  v30 = sub_22C272E84();
  sub_22BE1A140();
  sub_22BE19DC4(v31, v32, v33, v10);
  v34 = (v7 + v13[11]);
  v35 = (v7 + v13[13]);
  sub_22BE2343C();
  v36 = (v7 + v13[8]);
  *v36 = v44;
  v36[1] = v46;
  v37 = (v7 + v13[9]);
  *v37 = v41;
  v37[1] = v42;
  sub_22C18FE38((v7 + v13[10]));
  *v34 = v40;
  v34[1] = v24;
  *v35 = v45;
  v35[1] = v47;
  sub_22C18E7C8();
  *(v7 + v13[15]) = v30;
  v38 = *(v43 + 8);

  v39 = sub_22C18F9B8();
  v38(v39);
  sub_22BE1AABC();
}

uint64_t sub_22C1239EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000022C2DAEA0 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7247746E65696C63 && a2 == 0xED0000644970756FLL;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_22C123BA8(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x6553746E65696C63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x7247746E65696C63;
      break;
    case 4:
      result = 0x73746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C123C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1239EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C123C90(uint64_t a1)
{
  v2 = sub_22C17246C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C123CCC(uint64_t a1)
{
  v2 = sub_22C17246C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Transcript.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D9124E0, &qword_22C2B77E8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  sub_22BE23094();
  v3 = sub_22C17246C();
  sub_22BE25524(&type metadata for Session.Transcript.CodingKeys, v4, v3);
  sub_22C18E810();
  sub_22C26E1D4();
  sub_22BE18B28();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    type metadata accessor for Session.Transcript(0);
    sub_22C18E864();
    sub_22C18F320(v6);
    sub_22BE42570();
    sub_22C273F54();
    sub_22C18F320(*(v1 + 24));
    sub_22BE200EC();
    sub_22BE36628();
    sub_22C273F54();
    sub_22C18F320(*(v1 + 28));
    sub_22C18E900();
    sub_22BE36628();
    sub_22C273EF4();
    sub_22BE5CE4C(&qword_27D9124F0, &qword_22C2B77F0);
    sub_22C1724C0();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v7 = sub_22BE37A10();
  v8(v7);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void Session.Transcript.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_22BE19130();
  v22 = v21;
  v41 = v23;
  sub_22C26E1D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v24);
  sub_22BE17A44();
  sub_22BE252B8(v25);
  sub_22BE5CE4C(&qword_27D912500, &qword_22C2B77F8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1A8B4();
  v27 = type metadata accessor for Session.Transcript(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE197B8();
  sub_22BE31088(v22);
  sub_22C17246C();
  sub_22BEE939C();
  sub_22C274214();
  if (v20)
  {
    sub_22BE26B64(v22);
  }

  else
  {
    sub_22BE18B28();
    sub_22BE20458(v29);
    sub_22BEE92A4();
    sub_22C273EB4();
    sub_22BE27C14();
    v30 = sub_22BE1A6BC();
    v31(v30);
    sub_22BE2315C();
    v32 = sub_22C273E64();
    sub_22BE37C38(v32, v33, v27[5]);
    sub_22BE200EC();
    v34 = sub_22C273E64();
    sub_22BE37C38(v34, v35, v27[6]);
    sub_22C18E900();
    v36 = sub_22C273E04();
    sub_22BE37C38(v36, v37, v27[7]);
    sub_22BE5CE4C(&qword_27D9124F0, &qword_22C2B77F0);
    sub_22C18FDB8();
    sub_22C172574();
    sub_22C18EBD4();
    sub_22C273EB4();
    v38 = sub_22C18FCE0();
    v39(v38);
    *(v19 + v27[8]) = v42;
    v40 = sub_22BE19EBC();
    sub_22BE1A964(v40, v41);
    sub_22BE26B64(v22);
    sub_22BE26148();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t Session.Event.sessionId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

uint64_t Session.Event.queryEventId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

uint64_t Session.Event.payload.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  v1 = sub_22C18F880();
  return sub_22C172628(v1, v2);
}

uint64_t Session.Event.payload.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

uint64_t Session.Event.clientRequestId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

void Session.Event.clientSessionId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Session.Event(v3);
  sub_22C18EA48(*(v4 + 36));

  *v1 = v2;
  v1[1] = v0;
}

uint64_t Session.Event.clientSessionId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

void Session.Event.clientApplicationId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Session.Event(v3);
  sub_22C18EA48(*(v4 + 40));

  *v1 = v2;
  v1[1] = v0;
}

uint64_t Session.Event.clientApplicationId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

void Session.Event.clientGroupId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Session.Event(v3);
  sub_22C18EA48(*(v4 + 44));

  *v1 = v2;
  v1[1] = v0;
}

uint64_t Session.Event.clientGroupId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

uint64_t Session.Event.timepoint.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  v1 = sub_22C18F880();
  return sub_22C172628(v1, v2);
}

uint64_t Session.Event.timepoint.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

uint64_t Session.Event.sender.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

uint64_t Session.Event.postingSpan.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

uint64_t Session.Event.initiatedSpans.getter()
{
  type metadata accessor for Session.Event(0);
}

void Session.Event.initiatedSpans.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for Session.Event(v2) + 60);

  *(v1 + v3) = v0;
}

uint64_t Session.Event.init(sessionId:queryEventId:payload:clientRequestId:clientSessionId:clientApplicationId:clientGroupId:timepoint:sender:postingSpan:initiatedSpans:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  v20 = type metadata accessor for Session.Event(0);
  v21 = sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v22, v23, v24, v21);
  v25 = (a8 + v20[11]);
  v26 = (a8 + v20[13]);
  v27 = a8 + v20[14];
  sub_22C18FA78();
  (*(v28 + 32))(a8 + v29, a1, v21);
  sub_22BE2343C();
  sub_22BE1A054();
  sub_22C171FA8(a2, a8 + v30);
  v31 = (a8 + v20[8]);
  *v31 = a3;
  v31[1] = a4;
  v32 = (a8 + v20[9]);
  *v32 = a5;
  v32[1] = a6;
  v33 = (a8 + v20[10]);
  *v33 = a7;
  v33[1] = a9;
  *v25 = a10;
  v25[1] = a11;
  sub_22BE38554();
  result = sub_22C171FA8(v34, v35);
  *v26 = a13;
  v26[1] = a14;
  *v27 = a15;
  *(v27 + 8) = a16 & 1;
  *(a8 + v20[15]) = a17;
  return result;
}

BOOL sub_22C124910(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C273DC4();

  return v2 != 0;
}

BOOL sub_22C124964@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C124910(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_22C1249BC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C124910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1249F4(uint64_t a1)
{
  v2 = sub_22C17387C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C124A30(uint64_t a1)
{
  v2 = sub_22C17387C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestContent.SystemPromptResolution.description.getter()
{
  v1 = sub_22BE324FC();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  sub_22C18E4D0();
  sub_22C273AA4();
  sub_22C18F8D4();
  MEMORY[0x2318AB8D0](0xD000000000000026, 0x800000022C2DB8E0);
  sub_22BE260B8();
  sub_22BE22814();
  v5 = sub_22C26E1D4();
  v6 = sub_22BE1AB5C(v0, 1, v5);
  if (v7)
  {
    sub_22C18DC5C(v0, &qword_27D9082F0);
  }

  else
  {
    MEMORY[0x2318A6890](v6);
    sub_22BE1BC24();
    v8 = sub_22BE1C2A0();
    v9(v8);
  }

  v10 = sub_22BE1AB1C();
  MEMORY[0x2318AB8D0](v10);

  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD000000000000019);
  type metadata accessor for RequestContent.SystemPromptResolution(0);
  sub_22BE18B28();
  v12 = sub_22BE20458(v11);
  v13 = sub_22C18F5E0(v12);
  MEMORY[0x2318AB8D0](v13);

  MEMORY[0x2318AB8D0](0x634172657375202CLL, 0xEE00203A6E6F6974);
  v14 = RequestContent.SystemPromptResolution.UserAction.description.getter();
  MEMORY[0x2318AB8D0](v14);

  v15 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v15);
  sub_22C26E684();
  sub_22BE18F44();
  v17 = sub_22BE20458(v16);
  v18 = sub_22C18F5E0(v17);
  MEMORY[0x2318AB8D0](v18);

  v19 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v19);
  return v21;
}

uint64_t Action.description.getter()
{
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD000000000000014, 0x800000022C2DB930);
  sub_22C26E684();
  sub_22BE18F44();
  v2 = sub_22BE20458(v1);
  v3 = sub_22C18FB68(v2);
  MEMORY[0x2318AB8D0](v3);

  MEMORY[0x2318AB8D0](0x203A6C6F6F74202CLL, 0xE800000000000000);
  v4 = type metadata accessor for Action(0);
  sub_22C273C24();
  MEMORY[0x2318AB8D0](0x656C646E7562202CLL, 0xEC000000203A6449);
  sub_22C18F2B8(v4[5]);

  v5 = sub_22BE1B328();
  MEMORY[0x2318AB8D0](v5);

  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD000000000000013);
  type metadata accessor for Action.ParameterValue(0);
  v6 = sub_22C272E64();
  MEMORY[0x2318AB8D0](v6);

  MEMORY[0x2318AB8D0](0x666E6F437369202CLL, 0xEF203A64656D7269);
  if (*(v0 + v4[6]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + v4[6]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2318AB8D0](v7, v8);

  sub_22BE2940C();
  MEMORY[0x2318AB8D0]();
  sub_22C18F7F4(v4[8]);

  v9 = sub_22BE33FD8();
  MEMORY[0x2318AB8D0](v9);

  v10 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v10);
  return 0;
}

void ClientAction.description.getter()
{
  sub_22BE22B9C();
  sub_22C273AA4();
  sub_22C18F8B0();
  sub_22C18F06C();
  MEMORY[0x2318AB8D0]();
  sub_22C26E684();
  sub_22BE18F44();
  v1 = sub_22BE20458(v0);
  v2 = sub_22C18FB68(v1);
  v4 = v3;
  MEMORY[0x2318AB8D0](v2);

  sub_22C18FAC4();
  type metadata accessor for ClientAction(0);
  sub_22C18F27C();
  v6 = sub_22C18FA3C(v5);
  MEMORY[0x2318AB8D0](v6);
  MEMORY[0x2318AB8D0](0x656D61726170202CLL, 0xEE00203A73726574);
  sub_22C272874();
  sub_22BE336E8();
  v7 = sub_22C272E64();
  MEMORY[0x2318AB8D0](v7);

  sub_22C18F06C();
  MEMORY[0x2318AB8D0](0xD000000000000011);
  sub_22C18F7F4(*(v4 + 28));

  v8 = sub_22BE1B18C();
  MEMORY[0x2318AB8D0](v8);

  sub_22BE2940C();
  MEMORY[0x2318AB8D0]();
  sub_22C18F7F4(*(v4 + 32));

  v9 = sub_22BE1B18C();
  MEMORY[0x2318AB8D0](v9);

  sub_22C18F06C();
  MEMORY[0x2318AB8D0]();
  sub_22BE5CE4C(&qword_27D912510, &unk_22C2B7800);
  sub_22BE3CC34();
  sub_22C272E64();
  sub_22C18FC2C();

  sub_22BE234D8();
}

uint64_t ActionCancellation.description.getter()
{
  v0 = sub_22BE191CC();
  sub_22BE5CE4C(v0, v1);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1B01C();
  sub_22C18E4D0();
  sub_22C273AA4();
  sub_22C18F8D4();
  MEMORY[0x2318AB8D0](0xD000000000000020, 0x800000022C2DB9D0);
  sub_22BE37490();
  sub_22BE22814();
  sub_22BE1AB1C();
  v3 = sub_22C273074();
  MEMORY[0x2318AB8D0](v3);

  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD00000000000001DLL);
  type metadata accessor for ActionCancellation(0);
  sub_22C18F32C();
  sub_22C26E684();
  sub_22BE18F44();
  v5 = sub_22BE20458(v4);
  v6 = sub_22C18F5E0(v5);
  MEMORY[0x2318AB8D0](v6);

  v7 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v7);
  return v9;
}

uint64_t ToolResolution.description.getter()
{
  sub_22BE382D8();
  sub_22C273AA4();
  sub_22C18F8B0();
  sub_22C18F06C();
  MEMORY[0x2318AB8D0](0xD000000000000015);
  v0 = sub_22C2721D4();
  MEMORY[0x2318AB8D0](v0);

  v1 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v1);
  type metadata accessor for ToolResolution(0);
  sub_22C18F32C();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v2);
  sub_22BE2590C();
  v3 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v3);

  sub_22C18F06C();
  MEMORY[0x2318AB8D0]();
  sub_22BE2590C();
  sub_22C273FD4();
  sub_22C18FC2C();

  v4 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v4);
  return v6;
}

void UndoRedoRequest.description.getter()
{
  sub_22BE19460();
  v2 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  v4 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  v6 = sub_22BE3E79C();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A8B4();
  sub_22BE1BE3C();
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD000000000000022, 0x800000022C2DBA60);
  MEMORY[0x2318AB8D0](*v0, v0[1]);
  MEMORY[0x2318AB8D0](0x3A6E656B6F74202CLL, 0xE900000000000020);
  type metadata accessor for UndoRedoRequest(0);
  sub_22C18E864();
  sub_22C18EA6C();
  sub_22BE22814();
  v10 = sub_22C26E1D4();
  v11 = sub_22BE406A0();
  sub_22BE1AB5C(v11, v12, v10);
  if (v13)
  {
    sub_22C18DC5C(v1, &qword_27D9082F0);
  }

  else
  {
    sub_22C26E184();
    sub_22C18FA9C();
    sub_22BE1BC24();
    (*(v14 + 8))(v1, v10);
  }

  v15 = sub_22BE29264();
  MEMORY[0x2318AB8D0](v15);

  sub_22C18F504();
  sub_22C273C24();
  v16 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v16);
  sub_22BE18F44();
  sub_22BE20458(v17);
  sub_22C18EA54();
  v18 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v18);

  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD000000000000016);
  sub_22BE22814();
  v19 = sub_22BE23E90();
  sub_22BE1AB5C(v19, v20, v2);
  if (!v13)
  {
    sub_22BE47DF4();
    sub_22C18F910();
    v21();
    sub_22C18EA54();
    sub_22C273FD4();
    v22 = sub_22BE1C2A0();
    v23(v22);
  }

  v24 = sub_22BE3CC34();
  MEMORY[0x2318AB8D0](v24);

  v25 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v25);
  sub_22C18FCD4();
  sub_22BE1AABC();
}

void ClientUndoRedoRequest.description.getter()
{
  sub_22BE19460();
  sub_22C26E684();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v1);
  sub_22BE38390();
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE25CD0();
  sub_22BE1BE3C();
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD00000000000001DLL, 0x800000022C2DBAB0);
  v4 = sub_22C26E184();
  MEMORY[0x2318AB8D0](v4);

  sub_22C18F504();
  type metadata accessor for ClientUndoRedoRequest(0);
  sub_22C18FCBC();
  sub_22C273C24();
  v5 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v5);
  sub_22BE18F44();
  sub_22BE20458(v6);
  sub_22BE29264();
  v7 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v7);

  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD000000000000016);
  sub_22BE22814();
  v8 = sub_22BE26188();
  sub_22BE1AB5C(v8, v9, v0);
  if (!v10)
  {
    sub_22BE27C14();
    v11 = sub_22BE324FC();
    v12(v11);
    sub_22BE29264();
    sub_22C273FD4();
    v13 = sub_22BE1B5EC();
    v14(v13);
  }

  v15 = sub_22BE1B328();
  MEMORY[0x2318AB8D0](v15);

  v16 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v16);
  sub_22C18FCD4();
  sub_22BE1AABC();
}

void TypeConversionRequest.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C190048();
  sub_22BE382D8();
  sub_22C273AA4();
  sub_22C18F8B0();
  sub_22C18F06C();
  MEMORY[0x2318AB8D0](0xD00000000000001DLL);
  sub_22C272874();
  sub_22C273C24();
  sub_22C18FAC4();
  type metadata accessor for TypeConversionRequest(0);
  sub_22C18F32C();
  sub_22C2728A4();
  sub_22C273C24();
  v18 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v18);
  sub_22C26E684();
  sub_22BE18F44();
  v20 = sub_22BE20458(v19);
  sub_22C18F5E0(v20);
  sub_22C18FC2C();

  v21 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v21);
  sub_22C190034();
}

void TypeConversionResult.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C190048();
  sub_22BE382D8();
  sub_22C273AA4();
  sub_22C18F8B0();
  sub_22C18F06C();
  MEMORY[0x2318AB8D0]();
  sub_22C272874();
  sub_22C273C24();
  v18 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v18);
  type metadata accessor for TypeConversionResult(0);
  sub_22C18F32C();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v19);
  sub_22BE2590C();
  v20 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v20);

  sub_22C18F06C();
  MEMORY[0x2318AB8D0](0xD000000000000015);
  sub_22BE2590C();
  sub_22C273FD4();
  sub_22C18FC2C();

  v21 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v21);
  sub_22C190034();
}

void QueryDecorationResult.description.getter()
{
  sub_22BE3C358();
  v0 = sub_22BE29454();
  sub_22BE5CE4C(v0, v1);
  sub_22C18DFEC();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1A8B4();
  sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C28E670;
  sub_22C270FD4();
  v4 = sub_22BE1ACEC();
  v5 = MEMORY[0x2318ABBB0](v4);
  MEMORY[0x2318AB8D0](v5);

  sub_22BE48998();

  *(v3 + 32) = 0x203A736E6170737BLL;
  *(v3 + 40) = 0xE800000000000000;
  type metadata accessor for QueryDecorationResult(0);
  sub_22C18FD4C();
  sub_22BE22814();
  sub_22BE196A8();
  v6 = sub_22C273074();
  MEMORY[0x2318AB8D0](v6);

  sub_22BE48998();

  *(v3 + 48) = 0xD000000000000018;
  *(v3 + 56) = 0x800000022C2DBB30;
  type metadata accessor for DynamicEnumerationEntityStatement(0);
  v7 = sub_22BE1ACEC();
  v8 = MEMORY[0x2318ABBB0](v7);
  MEMORY[0x2318AB8D0](v8);

  sub_22BE48998();

  *(v3 + 64) = 0xD00000000000001DLL;
  *(v3 + 72) = 0x800000022C2DBB50;
  type metadata accessor for RetrievedContextStatement(0);
  v9 = sub_22BE1ACEC();
  v10 = MEMORY[0x2318ABBB0](v9);
  MEMORY[0x2318AB8D0](v10);

  sub_22BE48998();

  *(v3 + 80) = 0x747865746E6F637BLL;
  *(v3 + 88) = 0xEA0000000000203ALL;
  sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
  sub_22BEBAF64();
  sub_22C272FB4();

  sub_22BE18040();
  sub_22BE267B8();
}

uint64_t QueryDecorationPrePlannerResult.description.getter()
{
  sub_22C273AA4();

  sub_22C26E684();
  sub_22BE18F44();
  v1 = sub_22BE20458(v0);
  v2 = sub_22C18FB68(v1);
  MEMORY[0x2318AB8D0](v2);

  sub_22BE48998();
  sub_22C273AA4();

  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(0);
  v4 = sub_22C18FA3C(*(DecorationPrePlannerResult + 20));
  MEMORY[0x2318AB8D0](v4);
  sub_22BE48998();

  v5 = sub_22BE29454();
  MEMORY[0x2318AB8D0](v5);

  sub_22C18F774(0x707Bu);
  sub_22C18FAC4();
  sub_22C18FA84();
  sub_22C273C24();
  sub_22BE48998();

  v6 = sub_22BE260B8();
  MEMORY[0x2318AB8D0](v6);

  return 0x656D65746174537BLL;
}

unint64_t ExecutionPreconditionEvaluatorRequest.description.getter()
{
  sub_22BE382D8();
  sub_22C273AA4();

  sub_22BE25A74();
  ExecutionPreconditionEvaluatorRequest.ActionRequest.description.getter();
  sub_22C18FC2C();

  v0 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v0);
  return 0xD000000000000026;
}

uint64_t Session.Event.Payload.payloadType.getter()
{
  v1 = sub_22BE1A5E4();
  type metadata accessor for Session.Event.Payload(v1);
  sub_22BE18000();
  MEMORY[0x28223BE20](v2);
  sub_22BE2379C();
  sub_22BE1C058();
  v3 = sub_22BE1804C();
  sub_22BE1A964(v3, v4);
  sub_22BE1A8C4();
  result = swift_getEnumCaseMultiPayload();
  v6 = 12;
  switch(result)
  {
    case 1:
      result = sub_22C171FFC();
      v6 = 1;
      break;
    case 2:
      result = sub_22C171FFC();
      v6 = 2;
      break;
    case 3:
      result = sub_22C171FFC();
      v6 = 3;
      break;
    case 4:
      result = sub_22C171FFC();
      v6 = 4;
      break;
    case 5:
      result = sub_22C171FFC();
      v6 = 5;
      break;
    case 6:
      result = sub_22C171FFC();
      v6 = 6;
      break;
    case 7:
      result = sub_22C171FFC();
      v6 = 7;
      break;
    case 8:
      result = sub_22C171FFC();
      v6 = 8;
      break;
    case 9:
      result = sub_22C171FFC();
      v6 = 9;
      break;
    case 10:
      result = sub_22C171FFC();
      v6 = 10;
      break;
    case 11:
      result = sub_22C171FFC();
      v6 = 11;
      break;
    case 12:
      result = sub_22C171FFC();
      v6 = 14;
      break;
    case 13:
      result = sub_22C171FFC();
      v6 = 15;
      break;
    case 14:
      result = sub_22C171FFC();
      v6 = 16;
      break;
    case 15:
      v6 = 17;
      break;
    case 16:
      result = sub_22C171FFC();
      v6 = 18;
      break;
    case 17:
      result = sub_22C171FFC();
      v6 = 33;
      break;
    case 18:
      result = sub_22C171FFC();
      v6 = 34;
      break;
    case 19:
      result = sub_22C171FFC();
      v6 = 35;
      break;
    case 20:
      result = sub_22C171FFC();
      v6 = 19;
      break;
    case 21:
      result = sub_22C171FFC();
      v6 = 20;
      break;
    case 22:
      result = sub_22C171FFC();
      v6 = 21;
      break;
    case 23:
      result = sub_22C171FFC();
      v6 = 22;
      break;
    case 24:
      result = sub_22C171FFC();
      v6 = 23;
      break;
    case 25:
      result = sub_22C171FFC();
      v6 = 24;
      break;
    case 26:
      result = sub_22C171FFC();
      v6 = 25;
      break;
    case 27:
      result = sub_22C171FFC();
      v6 = 26;
      break;
    case 28:
      result = sub_22C171FFC();
      v6 = 27;
      break;
    case 29:
      result = sub_22C171FFC();
      v6 = 28;
      break;
    case 30:
      result = sub_22C171FFC();
      v6 = 29;
      break;
    case 31:
      v6 = 30;
      break;
    case 32:
      result = sub_22C171FFC();
      v6 = 31;
      break;
    case 33:
      result = sub_22C171FFC();
      v6 = 32;
      break;
    case 34:
      result = sub_22C171FFC();
      v6 = 36;
      break;
    case 35:
      result = sub_22C171FFC();
      v6 = 37;
      break;
    case 36:
      result = sub_22C171FFC();
      v6 = 38;
      break;
    case 37:
      v6 = 39;
      break;
    case 38:
      result = sub_22C171FFC();
      v6 = 40;
      break;
    case 39:
      result = sub_22C171FFC();
      v6 = 41;
      break;
    case 40:
      result = sub_22C171FFC();
      v6 = 42;
      break;
    case 41:
      result = sub_22C171FFC();
      v6 = 43;
      break;
    case 42:
      break;
    case 43:
      v6 = 13;
      break;
    default:
      result = sub_22C171FFC();
      v6 = 0;
      break;
  }

  *v0 = v6;
  return result;
}

uint64_t sub_22C126770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79726F7369766461 && a2 == 0xE800000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x800000022C2DBD90 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22C1268CC(char a1)
{
  result = 0x647261646E617473;
  switch(a1)
  {
    case 1:
      result = 0x7972657571;
      break;
    case 2:
      result = 0x79726F7369766461;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C12694C(uint64_t a1)
{
  v2 = sub_22C172784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C126988(uint64_t a1)
{
  v2 = sub_22C172784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1269C4(uint64_t a1)
{
  v2 = sub_22C172730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C126A00(uint64_t a1)
{
  v2 = sub_22C172730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C126A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C126770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C126A6C(uint64_t a1)
{
  v2 = sub_22C1726DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C126AA8(uint64_t a1)
{
  v2 = sub_22C1726DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C126AE4(uint64_t a1)
{
  v2 = sub_22C1727D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C126B20(uint64_t a1)
{
  v2 = sub_22C1727D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C126B5C(uint64_t a1)
{
  v2 = sub_22C17282C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C126B98(uint64_t a1)
{
  v2 = sub_22C17282C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Event.Payload.QueryTrackingBehavior.encode(to:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  sub_22BE5CE4C(&qword_27D912518, &qword_22C2B7A58);
  sub_22BE179D8();
  v28 = v2;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE20168(v4, v20);
  sub_22BE5CE4C(&qword_27D912520, &qword_22C2B7A60);
  sub_22BE179D8();
  v26 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE181D0(v7, v21);
  sub_22BE5CE4C(&qword_27D912528, &qword_22C2B7A68);
  sub_22BE179D8();
  v24 = v8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE2BA30(v10, v22);
  sub_22BE5CE4C(&qword_27D912530, &qword_22C2B7A70);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D912538, &qword_22C2B7A78);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A8B4();
  v13 = *v0;
  sub_22BE2018C(v1);
  sub_22C1726DC();
  sub_22BEE939C();
  sub_22C274234();
  switch(v13)
  {
    case 1:
      sub_22BE38948();
      sub_22C1727D8();
      v16 = v23;
      sub_22BE36090();
      sub_22C273EE4();
      v17 = v24;
      goto LABEL_6;
    case 2:
      sub_22C18F59C();
      sub_22C172784();
      v16 = v25;
      sub_22BE36090();
      sub_22C273EE4();
      v17 = v26;
      goto LABEL_6;
    case 3:
      sub_22BEE9478();
      sub_22C172730();
      v16 = v27;
      sub_22BE36090();
      sub_22C273EE4();
      v17 = v28;
LABEL_6:
      v15 = *(v17 + 8);
      v14 = v16;
      break;
    default:
      sub_22C17282C();
      sub_22BE36090();
      sub_22C273EE4();
      v14 = sub_22BE39058();
      break;
  }

  v15(v14);
  v18 = sub_22BE38FD8();
  v19(v18);
  sub_22C18FEDC();
  sub_22BE18478();
}

void Session.Event.Payload.QueryTrackingBehavior.init(from:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  v40 = v3;
  sub_22BE5CE4C(&qword_27D912568, &qword_22C2B7A80);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A174();
  sub_22BE3BF90(v5);
  sub_22BE5CE4C(&qword_27D912570, &qword_22C2B7A88);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE181D0(v7, v39);
  sub_22BE5CE4C(&qword_27D912578, &qword_22C2B7A90);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE234F4();
  sub_22BE5CE4C(&qword_27D912580, &qword_22C2B7A98);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D912588, &unk_22C2B7AA0);
  sub_22BE179D8();
  v41 = v11;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E64();
  v13 = sub_22BE3C968();
  sub_22BE26950(v13, v14);
  sub_22C1726DC();
  sub_22BE23550();
  sub_22C274214();
  if (!v42)
  {
    v43 = v2;
    v15 = v0;
    sub_22C273ED4();
    sub_22BE7C5C4();
    sub_22C18F644();
    if (!v16)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v19 == v20)
      {
        __break(1u);
        return;
      }

      v21 = *(v18 + v17);
      sub_22BE7C5C0();
      v23 = v22;
      v25 = v24;
      swift_unknownObjectRelease();
      if (v23 == v25 >> 1)
      {
        switch(v21)
        {
          case 1:
            sub_22BE38948();
            sub_22C1727D8();
            sub_22BEC000C();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_22C18F59C();
            sub_22C172784();
            sub_22BE3925C();
            sub_22BEC000C();
            sub_22C273DE4();
            swift_unknownObjectRelease();
LABEL_14:
            v26 = sub_22BE2399C();
            goto LABEL_15;
          case 3:
            sub_22BEE9478();
            sub_22C172730();
            sub_22BEC000C();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            v37 = sub_22BF0AFB8();
            v38(v37);
            goto LABEL_16;
          default:
            sub_22C17282C();
            sub_22BEC000C();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            v26 = sub_22BE2399C();
            v28 = v1;
LABEL_15:
            v27(v26, v28);
LABEL_16:
            (*(v41 + 8))(v15, v10);
            *v40 = v21;
            sub_22BE26B64(v43);
            break;
        }

        goto LABEL_10;
      }
    }

    v29 = sub_22C273B34();
    sub_22BE196B4(v29, MEMORY[0x277D841A0]);
    v31 = v30;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v31 = &type metadata for Session.Event.Payload.QueryTrackingBehavior;
    sub_22C273DF4();
    sub_22C18FE8C();
    sub_22BE1B198(v32);
    sub_22BE18994();
    v33 = sub_22BE38608();
    v34(v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    v35 = sub_22BF0AFB8();
    v36(v35);
    v2 = v43;
  }

  sub_22BE26B64(v2);
LABEL_10:
  sub_22BE22978();
  sub_22BE18478();
}

void static Session.Event.Payload.== infix(_:_:)()
{
  sub_22BE19460();
  v382 = v7;
  v381 = v8;
  v315 = type metadata accessor for AgentPrimitiveAction(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v341 = v10;
  sub_22BE183BC();
  v380 = sub_22C270234();
  sub_22BE179D8();
  v379 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22BE183BC();
  v378 = sub_22C270074();
  sub_22BE179D8();
  v377 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BE17A44();
  v15 = sub_22BE183BC();
  v311 = type metadata accessor for RequestAmendment(v15);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v340 = v17;
  v18 = sub_22BE183BC();
  type metadata accessor for ExecutionPreconditionEvaluatorRequest(v18);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v338 = v20;
  v21 = sub_22BE183BC();
  v22 = type metadata accessor for SkipStatement(v21);
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  v337 = v24;
  v25 = sub_22BE183BC();
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v25);
  sub_22BE18000();
  MEMORY[0x28223BE20](v26);
  sub_22BE17A44();
  v339 = v27;
  v28 = sub_22BE183BC();
  DecorationResult = type metadata accessor for QueryDecorationResult(v28);
  v30 = sub_22BE19448(DecorationResult);
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  v336 = v31;
  v32 = sub_22BE183BC();
  v33 = type metadata accessor for TypeConversionResult(v32);
  v34 = sub_22BE19448(v33);
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v335 = v35;
  v36 = sub_22BE183BC();
  v37 = type metadata accessor for TypeConversionRequest(v36);
  v38 = sub_22BE19448(v37);
  MEMORY[0x28223BE20](v38);
  sub_22BE17A44();
  v334 = v39;
  v40 = sub_22BE183BC();
  v41 = type metadata accessor for ClientUndoRedoRequest(v40);
  v42 = sub_22BE19448(v41);
  MEMORY[0x28223BE20](v42);
  sub_22BE17A44();
  v333 = v43;
  v44 = sub_22BE183BC();
  v45 = type metadata accessor for UndoRedoRequest(v44);
  v46 = sub_22BE19448(v45);
  MEMORY[0x28223BE20](v46);
  sub_22BE17A44();
  v332 = v47;
  v48 = sub_22BE183BC();
  v49 = type metadata accessor for ToolResolution(v48);
  v50 = sub_22BE19448(v49);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v330 = v51;
  v52 = sub_22BE183BC();
  v314 = type metadata accessor for ExternalAgentOutcome(v52);
  sub_22BE18000();
  MEMORY[0x28223BE20](v53);
  sub_22BE17A44();
  v331 = v54;
  v55 = sub_22BE183BC();
  v56 = type metadata accessor for ExternalAgentRequest(v55);
  v57 = sub_22BE19448(v56);
  MEMORY[0x28223BE20](v57);
  sub_22BE17A44();
  v329 = v58;
  v59 = sub_22BE183BC();
  v60 = type metadata accessor for StatementResult(v59);
  v61 = sub_22BE19448(v60);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  v328 = v62;
  sub_22BE183BC();
  v376 = sub_22C26F754();
  sub_22BE179D8();
  v375 = v63;
  MEMORY[0x28223BE20](v64);
  sub_22BE17A44();
  v65 = sub_22BE183BC();
  v66 = type metadata accessor for ActionResolverRequest(v65);
  v67 = sub_22BE19448(v66);
  MEMORY[0x28223BE20](v67);
  sub_22BE17A44();
  v326 = v68;
  v69 = sub_22BE183BC();
  StepResults = type metadata accessor for QueryStepResults(v69);
  sub_22BE18000();
  MEMORY[0x28223BE20](v70);
  sub_22BE17A44();
  v327 = v71;
  v72 = sub_22BE183BC();
  v73 = type metadata accessor for SessionError(v72);
  v74 = sub_22BE19448(v73);
  MEMORY[0x28223BE20](v74);
  sub_22BE17A44();
  v325 = v75;
  v76 = sub_22BE183BC();
  v77 = type metadata accessor for Session.RecoverableError(v76);
  v78 = sub_22BE19448(v77);
  MEMORY[0x28223BE20](v78);
  sub_22BE17A44();
  v324 = v79;
  v80 = sub_22BE183BC();
  type metadata accessor for VariableStep(v80);
  sub_22BE18000();
  MEMORY[0x28223BE20](v81);
  sub_22BE17A44();
  v323 = v82;
  v83 = sub_22BE183BC();
  Step = type metadata accessor for QueryStep(v83);
  v85 = sub_22BE19448(Step);
  MEMORY[0x28223BE20](v85);
  sub_22BE17A44();
  v322 = v86;
  v87 = sub_22BE183BC();
  v88 = type metadata accessor for ClientAction(v87);
  v89 = sub_22BE19448(v88);
  MEMORY[0x28223BE20](v89);
  sub_22BE17A44();
  v321 = v90;
  v91 = sub_22BE183BC();
  v92 = type metadata accessor for ActionCancellation(v91);
  v93 = sub_22BE19448(v92);
  MEMORY[0x28223BE20](v93);
  sub_22BE17A44();
  v320 = v94;
  v95 = sub_22BE183BC();
  v96 = type metadata accessor for Action(v95);
  v97 = sub_22BE19448(v96);
  MEMORY[0x28223BE20](v97);
  sub_22BE17A44();
  v319 = v98;
  v99 = sub_22BE183BC();
  v100 = type metadata accessor for Request(v99);
  v101 = sub_22BE19448(v100);
  MEMORY[0x28223BE20](v101);
  sub_22BE17A44();
  v318 = v102;
  v103 = sub_22BE183BC();
  v104 = type metadata accessor for UserTurnStarted(v103);
  v105 = sub_22BE19448(v104);
  MEMORY[0x28223BE20](v105);
  sub_22BE17A44();
  v317 = v106;
  v107 = sub_22BE183BC();
  v108 = type metadata accessor for SessionStart(v107);
  v109 = sub_22BE19448(v108);
  MEMORY[0x28223BE20](v109);
  sub_22BE17A44();
  v312 = v110;
  v111 = sub_22BE183BC();
  type metadata accessor for Session.Event.Payload(v111);
  sub_22BE18000();
  MEMORY[0x28223BE20](v112);
  sub_22BE17B98();
  v374 = v113;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v114);
  sub_22BE19490();
  v371 = v115;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v116);
  sub_22BE19490();
  v370 = v117;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v118);
  sub_22BE19490();
  v367 = v119;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v120);
  sub_22BE19490();
  v366 = v121;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v122);
  sub_22BE19490();
  v372 = v123;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v124);
  sub_22BE19490();
  v369 = v125;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v126);
  sub_22BE19490();
  v368 = v127;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v128);
  sub_22BE19490();
  v373 = v129;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v130);
  sub_22BE19490();
  v365 = v131;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v132);
  sub_22BE19490();
  v364 = v133;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v134);
  sub_22BE19490();
  v363 = v135;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v136);
  sub_22BE19490();
  v361 = v137;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v138);
  sub_22BE19490();
  v360 = v139;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v140);
  sub_22BE19490();
  v359 = v141;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v142);
  sub_22BE19490();
  v355 = v143;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v144);
  sub_22BE19490();
  v362 = v145;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v146);
  sub_22BE19490();
  v358 = v147;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v148);
  sub_22BE19490();
  v357 = v149;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v150);
  sub_22BE19490();
  v356 = v151;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v152);
  sub_22BE19490();
  v351 = v153;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v154);
  sub_22BE19490();
  v353 = v155;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v156);
  sub_22BE19490();
  v349 = v157;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v158);
  sub_22BE19490();
  v347 = v159;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v160);
  sub_22BE19490();
  v345 = v161;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v162);
  sub_22BE19490();
  v352 = v163;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v164);
  sub_22BE19490();
  v354 = v165;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v166);
  sub_22BE19490();
  v348 = v167;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v168);
  sub_22BE19490();
  v346 = v169;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v170);
  sub_22BE19490();
  v350 = v171;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v172);
  sub_22BE19490();
  v344 = v173;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v174);
  sub_22BE19490();
  v343 = v175;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v176);
  sub_22BE19490();
  v342 = v177;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v178);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v179);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v180);
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v181);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v182);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v183);
  sub_22BE1C17C();
  v184 = sub_22BE5CE4C(&qword_27D912590, &unk_22C2B7AB0);
  sub_22BE19448(v184);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v185);
  sub_22BE2C64C();
  v187 = (v6 + *(v186 + 56));
  sub_22BE1A964(v381, v6);
  v188 = v382;
  v383 = v187;
  sub_22BE1A964(v188, v187);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v241 = sub_22BE17E44();
      sub_22BE1A964(v241, v1);
      if (sub_22C18E658() == 1)
      {
        sub_22BE46150();
        sub_22C171FA8(v0, v317);
        sub_22BE191CC();
        static UserTurnStarted.== infix(_:_:)();
        sub_22C171FFC();
        goto LABEL_137;
      }

      sub_22BE4875C();
      goto LABEL_174;
    case 2u:
      v232 = sub_22BE17E44();
      sub_22BE1A964(v232, v2);
      v234 = *v2;
      v233 = v2[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_165;
      }

      if (v234 != *v187 || v233 != v187[1])
      {
        v236 = sub_22BE36680();
        if ((sub_22BE3C8EC(v236, v237, v238) & 1) == 0)
        {
          goto LABEL_154;
        }
      }

      sub_22BE2590C();
      sub_22BE9FF7C();
      goto LABEL_73;
    case 3u:
      v239 = sub_22BE17E44();
      sub_22BE1A964(v239, v0);
      if (sub_22C18F40C() == 3)
      {
        sub_22BE28EA8();
        sub_22C171FA8(v1, v318);
        sub_22BE1A8C4();
        static Request.== infix(_:_:)();
        sub_22C171FFC();
        sub_22BE18040();
        goto LABEL_137;
      }

      sub_22BE26A6C();
      goto LABEL_174;
    case 4u:
      v210 = sub_22BE17E44();
      sub_22BE1A964(v210, v3);
      *(v392 + 1) = sub_22C18F994();
      if (sub_22C18E658() == 4)
      {
        v211 = v0[1];
        v384 = *v0;
        v385 = v211;
        v386[0] = v0[2];
        *(v386 + 9) = *(v0 + 41);
        static Session.Plan.== infix(_:_:)();
        sub_22C10D970(&v384);
        sub_22C10D970(&v387);
        goto LABEL_138;
      }

      sub_22C10D970(&v387);
      goto LABEL_175;
    case 5u:
      v250 = sub_22BE17E44();
      sub_22BE1A964(v250, v5);
      if (sub_22C18E658() == 5)
      {
        sub_22BE23784();
        sub_22C171FA8(v0, v319);
        sub_22C0B1B94();
        static Action.== infix(_:_:)();
        sub_22C18EBB0();
        sub_22C171FFC();
        goto LABEL_137;
      }

      sub_22BE1C3A4();
      goto LABEL_174;
    case 6u:
      v254 = sub_22BE17E44();
      sub_22BE1A964(v254, v342);
      if (sub_22C18E658() != 6)
      {
        goto LABEL_174;
      }

      sub_22C18E254();
      sub_22C171FA8(v0, v320);
      sub_22BE1C2A0();
      static ActionCancellation.== infix(_:_:)();
      goto LABEL_136;
    case 7u:
      v240 = sub_22BE17E44();
      sub_22BE1A964(v240, v343);
      if (sub_22C18E658() != 7)
      {
        goto LABEL_174;
      }

      sub_22BE3C3F8();
      sub_22C171FA8(v0, v321);
      sub_22BE1C2A0();
      static ClientAction.== infix(_:_:)();
      goto LABEL_136;
    case 8u:
      v270 = sub_22BE17E44();
      sub_22BE1A964(v270, v344);
      if (sub_22C18E658() != 8)
      {
        goto LABEL_174;
      }

      sub_22BE35FFC();
      sub_22C171FA8(v0, v322);
      sub_22BE1C2A0();
      static QueryStep.== infix(_:_:)();
      goto LABEL_136;
    case 9u:
      v218 = sub_22BE17E44();
      sub_22BE1A964(v218, v350);
      if (sub_22C18E658() != 9)
      {
        goto LABEL_174;
      }

      v219 = sub_22BE431F0();
      sub_22C171FA8(v219, v323);
      sub_22BE1C2A0();
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        sub_22BE95FFC();
      }

      goto LABEL_123;
    case 0xAu:
      v269 = sub_22BE17E44();
      sub_22BE1A964(v269, v346);
      if (sub_22C18E658() != 10)
      {
        goto LABEL_174;
      }

      sub_22BE3C4F4();
      sub_22C171FA8(v0, v324);
      sub_22BE1C2A0();
      static Session.RecoverableError.== infix(_:_:)();
      goto LABEL_136;
    case 0xBu:
      v206 = sub_22BE17E44();
      sub_22BE1A964(v206, v348);
      if (sub_22C18E658() != 11)
      {
        goto LABEL_174;
      }

      v207 = sub_22BE431F0();
      sub_22C171FA8(v207, v325);
      v208 = sub_22BE1C2A0();
      static SessionError.== infix(_:_:)(v208, v209);
      goto LABEL_136;
    case 0xCu:
      v216 = sub_22BE17E44();
      sub_22BE1A964(v216, v354);
      if (sub_22C18E658() != 12)
      {
        goto LABEL_174;
      }

      sub_22C18E29C();
      sub_22C171FA8(v0, v327);
      sub_22BE9FFC4(*v354, *v327);
      if (v217)
      {
        sub_22C18F26C(StepResults);
        if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
        {
          sub_22C26E1B4();
        }
      }

      goto LABEL_123;
    case 0xDu:
      v252 = sub_22BE17E44();
      sub_22BE1A964(v252, v352);
      if (sub_22C18E658() != 13)
      {
        goto LABEL_174;
      }

      v253 = sub_22BE431F0();
      sub_22C171FA8(v253, v326);
      sub_22BE1C2A0();
      static ActionResolverRequest.== infix(_:_:)();
      goto LABEL_136;
    case 0xEu:
      v202 = sub_22BE17E44();
      sub_22BE1A964(v202, v345);
      if (sub_22C18F40C() != 14)
      {
        goto LABEL_166;
      }

      v203 = sub_22BE18040();
      sub_22BE96440(v203, v204);
      goto LABEL_116;
    case 0xFu:
      if (sub_22C18FC74() != 15)
      {
        goto LABEL_175;
      }

      goto LABEL_189;
    case 0x10u:
      v197 = sub_22BE17E44();
      sub_22BE1A964(v197, v347);
      v199 = *v347;
      v198 = v347[1];
      sub_22BE29454();
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_166;
      }

      v200 = v383[1];
      if (v198)
      {
        if (v200)
        {
          v201 = v199 == *v383 && v198 == v200;
          if (!v201)
          {
            sub_22BE1C2A0();
            sub_22C274014();

            goto LABEL_188;
          }

LABEL_147:

          goto LABEL_148;
        }
      }

      else
      {

        if (!v200)
        {
LABEL_148:

          goto LABEL_189;
        }
      }

LABEL_188:

LABEL_189:
      sub_22BE1A7E0();
      sub_22C171FFC();
LABEL_176:
      sub_22BE1AABC();
      return;
    case 0x11u:
      v242 = sub_22BE17E44();
      sub_22BE1A964(v242, v349);
      sub_22BE29454();
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_165;
      }

      sub_22BE18040();
      sub_22BE9FED4();
      if ((v243 & 1) == 0)
      {
        goto LABEL_154;
      }

      sub_22BE2590C();
      sub_22BE9FED4();
      goto LABEL_73;
    case 0x12u:
      v255 = sub_22BE17E44();
      sub_22BE1A964(v255, v353);
      v256 = *(v353 + 8);
      v257 = *(v353 + 24);
      v258 = *(v353 + 40);
      v259 = *(v353 + 48);
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v260 = *(v353 + 32);
        v261 = *(v353 + 16);
        v262 = *v187;
        v263 = v187[1];
        v264 = v383[2];
        v265 = v383[3];
        v266 = *(v383 + 8);
        v267 = v383[5];
        v268 = v383[6];
        v387 = *v353;
        v388 = v256;
        v389 = v261;
        v390 = v257;
        v391 = v260;
        v392[0] = v258;
        v392[1] = v259;
        *&v384 = v262;
        *(&v384 + 1) = v263;
        *&v385 = v264;
        *(&v385 + 1) = v265;
        LODWORD(v386[0]) = v266;
        *(&v386[0] + 1) = v267;
        *&v386[1] = v268;
        static ToolRetrievalResponse.== infix(_:_:)(&v387);

        sub_22BE1A7E0();
        goto LABEL_139;
      }

LABEL_165:

LABEL_166:

      goto LABEL_175;
    case 0x13u:
      v288 = sub_22BE17E44();
      sub_22BE1A964(v288, v351);
      if (sub_22C18F40C() != 19)
      {
        goto LABEL_166;
      }

      v289 = sub_22BE18040();
      sub_22BE96494(v289, v290);
LABEL_116:

      goto LABEL_138;
    case 0x14u:
      v247 = sub_22BE17E44();
      sub_22BE1A964(v247, v356);
      if (sub_22C18E658() == 20)
      {
        v213 = v375;
        sub_22BE286F0();
        v248 = sub_22BE36680();
        v249(v248);
        sub_22BE18240();
        sub_22C26F744();
        goto LABEL_113;
      }

      v307 = sub_22BE28D70();
      v309 = v376;
      goto LABEL_173;
    case 0x15u:
      v251 = sub_22BE17E44();
      sub_22BE1A964(v251, v357);
      if (sub_22C18E658() != 21)
      {
        goto LABEL_174;
      }

      sub_22C18E26C();
      sub_22C171FA8(v0, v328);
      sub_22BE1C2A0();
      static StatementResult.== infix(_:_:)();
      goto LABEL_136;
    case 0x16u:
      v280 = sub_22BE17E44();
      sub_22BE1A964(v280, v358);
      if (sub_22C18E658() != 22)
      {
        goto LABEL_174;
      }

      v281 = sub_22BE431F0();
      sub_22C171FA8(v281, v329);
      sub_22BE1C2A0();
      static ExternalAgentRequest.== infix(_:_:)();
      goto LABEL_136;
    case 0x17u:
      v291 = sub_22BE17E44();
      sub_22BE1A964(v291, v362);
      if (sub_22C18E658() != 23)
      {
        goto LABEL_174;
      }

      v292 = sub_22BE431F0();
      sub_22C171FA8(v292, v331);
      sub_22BE1C2A0();
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        sub_22C18F26C(v314);
        if (sub_22C26F884())
        {
          sub_22BE9693C(*(v362 + *(v314 + 24)), *(v331 + *(v314 + 24)));
        }
      }

      goto LABEL_123;
    case 0x18u:
      v223 = sub_22BE17E44();
      sub_22BE1A964(v223, v355);
      v225 = *v355;
      v224 = v355[1];
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_165;
      }

      if (v225 != *v187 || v224 != v187[1])
      {
        v227 = sub_22BE36680();
        if ((sub_22BE3C8EC(v227, v228, v229) & 1) == 0)
        {
LABEL_154:

          goto LABEL_188;
        }
      }

      v230 = sub_22BE2590C();
      sub_22BE9693C(v230, v231);
LABEL_73:

      goto LABEL_189;
    case 0x19u:
      v220 = sub_22BE17E44();
      sub_22BE1A964(v220, v359);
      if (sub_22C18E658() != 25)
      {
        goto LABEL_174;
      }

      sub_22BE36CE8();
      sub_22C171FA8(v0, v330);
      v221 = sub_22BE1C2A0();
      static ToolResolution.== infix(_:_:)(v221, v222);
      goto LABEL_136;
    case 0x1Au:
      v306 = sub_22BE17E44();
      sub_22BE1A964(v306, v360);
      if (sub_22C18E658() != 26)
      {
        goto LABEL_174;
      }

      sub_22BE41514();
      sub_22C171FA8(v0, v332);
      sub_22BE1C2A0();
      static UndoRedoRequest.== infix(_:_:)();
      goto LABEL_136;
    case 0x1Bu:
      v194 = sub_22BE17E44();
      sub_22BE1A964(v194, v361);
      if (sub_22C18E658() != 27)
      {
        goto LABEL_174;
      }

      sub_22C18E2CC();
      sub_22C171FA8(v0, v333);
      sub_22BE1C2A0();
      static ClientUndoRedoRequest.== infix(_:_:)();
      goto LABEL_136;
    case 0x1Cu:
      v293 = sub_22BE17E44();
      sub_22BE1A964(v293, v363);
      if (sub_22C18E658() != 28)
      {
        goto LABEL_174;
      }

      sub_22BE37B38();
      sub_22C171FA8(v0, v334);
      v294 = sub_22BE1C2A0();
      static TypeConversionRequest.== infix(_:_:)(v294, v295);
      goto LABEL_136;
    case 0x1Du:
      v296 = sub_22BE17E44();
      sub_22BE1A964(v296, v364);
      if (sub_22C18E658() != 29)
      {
        goto LABEL_174;
      }

      sub_22BE22B40();
      sub_22C171FA8(v0, v335);
      v297 = sub_22BE1C2A0();
      static TypeConversionResult.== infix(_:_:)(v297, v298);
      goto LABEL_136;
    case 0x1Eu:
      v271 = sub_22BE17E44();
      sub_22BE1A964(v271, v365);
      if (sub_22C18E658() != 30)
      {
        goto LABEL_174;
      }

      sub_22BE3CA54();
      sub_22C171FA8(v0, v336);
      sub_22BE1C2A0();
      static QueryDecorationResult.== infix(_:_:)();
      goto LABEL_136;
    case 0x1Fu:
      if (sub_22C18FC74() != 31)
      {
        goto LABEL_175;
      }

      goto LABEL_189;
    case 0x20u:
      v272 = sub_22BE17E44();
      sub_22BE1A964(v272, v373);
      if (sub_22C18E658() != 32)
      {
        sub_22BE291DC();
        goto LABEL_174;
      }

      sub_22C18E23C();
      sub_22C171FA8(v0, v339);
      sub_22BE33560();
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        sub_22C18FF2C();
        v275 = v201 && v273 == v274;
        if (v275 || (sub_22C274014() & 1) != 0)
        {
          v276 = *(DecorationPrePlannerResult + 24);
          v277 = *(v373 + v276 + 8);
          v387 = *(v373 + v276);
          LOBYTE(v388) = v277;
          v278 = (v339 + v276);
          v279 = *v278;
          LOBYTE(v278) = *(v278 + 8);
          *&v384 = v279;
          BYTE8(v384) = v278;

          static QueryDecorationPrePlannerResultPayload.== infix(_:_:)(&v387, &v384);
        }
      }

      sub_22C18EB80();
      sub_22C171FFC();
LABEL_186:
      sub_22C171FFC();
      goto LABEL_189;
    case 0x21u:
      v205 = sub_22BE17E44();
      sub_22BE1A964(v205, v368);
      if (sub_22C18E658() != 33)
      {
        goto LABEL_174;
      }

      sub_22BE1B674();
      sub_22C171FA8(v0, v337);
      sub_22BE1C2A0();
      _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
LABEL_136:
      sub_22C171FFC();
      goto LABEL_137;
    case 0x22u:
      v195 = sub_22BE17E44();
      sub_22BE1A964(v195, v369);
      if (sub_22C18E658() != 34)
      {
        goto LABEL_174;
      }

      sub_22C18E2B4();
      sub_22C171FA8(v0, v338);
      sub_22BE1C2A0();
      static ExecutionPreconditionEvaluatorRequest.ActionRequest.== infix(_:_:)();
      if (v196)
      {
        sub_22BEA33FC();
      }

LABEL_123:
      sub_22C171FFC();
      goto LABEL_186;
    case 0x23u:
      v190 = sub_22BE17E44();
      sub_22BE1A964(v190, v372);
      if (sub_22C18E658() != 35)
      {
        goto LABEL_174;
      }

      sub_22C18E2E4();
      sub_22C171FA8(v0, v340);
      sub_22BE1C2A0();
      if (sub_22C26E1B4())
      {
        sub_22C18F26C(v311);
        static RequestContent.== infix(_:_:)();
      }

      sub_22BE3255C();
      sub_22C171FFC();
      goto LABEL_186;
    case 0x24u:
      v191 = sub_22BE17E44();
      sub_22BE1A964(v191, v366);
      v193 = *v366;
      v192 = v366[1];
      if (sub_22C18F40C() != 36)
      {
        goto LABEL_166;
      }

      goto LABEL_129;
    case 0x25u:
      if (sub_22C18FC74() != 37)
      {
        goto LABEL_175;
      }

      goto LABEL_189;
    case 0x26u:
      v299 = sub_22BE17E44();
      sub_22BE1A964(v299, v367);
      v193 = *v367;
      v192 = v367[1];
      if (sub_22C18F40C() != 38)
      {
        goto LABEL_166;
      }

LABEL_129:
      v300 = *v1;
      v301 = v1[1];
      if (v193 == v300 && v192 == v301)
      {
        goto LABEL_147;
      }

      v303 = sub_22BE3C5E4();
      sub_22BE3C8EC(v303, v304, v305);

      goto LABEL_188;
    case 0x27u:
      v282 = sub_22BE17E44();
      sub_22BE1A964(v282, v370);
      if (sub_22C18E658() == 39)
      {
        v213 = v377;
        sub_22BE286F0();
        v283 = sub_22BE36680();
        v284(v283);
        sub_22BE18240();
        sub_22C270054();
        goto LABEL_113;
      }

      v307 = sub_22BE28D70();
      v309 = v378;
      goto LABEL_173;
    case 0x28u:
      v212 = sub_22BE17E44();
      sub_22BE1A964(v212, v371);
      if (sub_22C18E658() == 40)
      {
        v213 = v379;
        sub_22BE286F0();
        v214 = sub_22BE36680();
        v215(v214);
        sub_22BE18240();
        sub_22C270214();
LABEL_113:
        v285 = *(v213 + 8);
        v286 = sub_22BE38970();
        v285(v286);
        v287 = sub_22BE200E0();
        v285(v287);
        goto LABEL_138;
      }

      v307 = sub_22BE28D70();
      v309 = v380;
LABEL_173:
      v308(v307, v309);
      goto LABEL_175;
    case 0x29u:
      v244 = sub_22BE17E44();
      sub_22BE1A964(v244, v374);
      if (sub_22C18E658() != 41)
      {
        goto LABEL_174;
      }

      v245 = sub_22BE431F0();
      sub_22C171FA8(v245, v341);
      v246 = *v374 == *v341 && v374[1] == v341[1];
      if (v246 || (sub_22C274014() & 1) != 0)
      {
        sub_22C18F26C(v315);
        static AgentPrimitiveAction.PrimitiveAction.== infix(_:_:)();
        sub_22C18E284();
        sub_22C171FFC();
      }

      else
      {
        sub_22C18E284();
        sub_22C171FFC();
      }

      goto LABEL_186;
    case 0x2Au:
      if (sub_22C18FC74() != 42)
      {
        goto LABEL_175;
      }

      goto LABEL_189;
    case 0x2Bu:
      if (sub_22C18FC74() != 43)
      {
        goto LABEL_175;
      }

      goto LABEL_189;
    default:
      v189 = sub_22BE17E44();
      sub_22BE1A964(v189, v4);
      if (sub_22C18E658())
      {
        sub_22BE23F00();
LABEL_174:
        sub_22C171FFC();
LABEL_175:
        sub_22C18DC5C(v6, &qword_27D912590);
      }

      else
      {
        v310 = sub_22BE431F0();
        sub_22C171FA8(v310, v312);
        static SessionStart.== infix(_:_:)();
        sub_22C171FFC();
LABEL_137:
        sub_22C171FFC();
LABEL_138:
        sub_22BE1A7E0();
LABEL_139:
        sub_22C171FFC();
      }

      goto LABEL_176;
  }
}

void static SessionStart.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C26EC34();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE3668C(v6);
  v7 = sub_22BE5CE4C(&qword_27D911C20, &qword_22C2B5060);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  sub_22BE3BF90(v9);
  v43 = sub_22BE5CE4C(&qword_27D912598, &unk_22C2B7AC0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v44 = v11;
  sub_22BE183BC();
  v12 = sub_22C26EA84();
  sub_22BE179D8();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BE28FD8();
  v16 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE25CD0();
  sub_22BE5CE4C(&qword_27D9125A0, &qword_22C2B7AD0);
  sub_22C18DFEC();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A8B4();
  sub_22BE3C968();
  if ((sub_22C26EC84() & 1) == 0)
  {
    goto LABEL_22;
  }

  v41 = type metadata accessor for SessionStart(0);
  v19 = *(v0 + 48);
  sub_22C18FD58();
  sub_22BE22814();
  sub_22BE22814();
  sub_22BE181B0(v1);
  if (!v20)
  {
    sub_22BE38FD8();
    sub_22BE22814();
    sub_22BE181B0(v1 + v19);
    if (!v20)
    {
      (*(v14 + 32))(v2, v1 + v19, v12);
      sub_22BE41F14();
      sub_22BE20458(v24);
      v25 = sub_22C272FD4();
      v26 = *(v14 + 8);
      v26(v2, v12);
      v27 = sub_22BE431C0();
      (v26)(v27);
      sub_22C18DC5C(v1, &qword_27D911F60);
      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    v21 = sub_22BE431C0();
    v22(v21);
LABEL_10:
    v23 = &qword_27D9125A0;
LABEL_21:
    sub_22C18DC5C(v1, v23);
    goto LABEL_22;
  }

  sub_22BE181B0(v1 + v19);
  if (!v20)
  {
    goto LABEL_10;
  }

  sub_22C18DC5C(v1, &qword_27D911F60);
LABEL_12:
  v28 = *(v41 + 24);
  v1 = v44;
  v29 = *(v43 + 48);
  sub_22BE27B84();
  sub_22BE22814();
  sub_22BE27B84();
  sub_22BE22814();
  sub_22BE406A0();
  sub_22C18FD0C();
  sub_22BE1AB5C(v30, v31, v32);
  if (!v20)
  {
    sub_22BE22814();
    sub_22BE200F8(v44 + v29);
    if (!v33)
    {
      sub_22BE47DF4();
      v36(v42, v44 + v29, v28);
      sub_22C18E214();
      sub_22BE20458(v37);
      sub_22C0B1B94();
      sub_22C272FD4();
      v38 = *(v4 + 8);
      v39 = sub_22BE191CC();
      v38(v39);
      v40 = sub_22BE33BE8();
      v38(v40);
      sub_22C18DC5C(v44, &qword_27D911C20);
      goto LABEL_22;
    }

    v34 = sub_22C18E474();
    v35(v34);
    goto LABEL_20;
  }

  sub_22BE200F8(v44 + v29);
  if (!v20)
  {
LABEL_20:
    v23 = &qword_27D912598;
    goto LABEL_21;
  }

  sub_22C18DC5C(v44, &qword_27D911C20);
LABEL_22:
  sub_22BE1AABC();
}

void static UserTurnStarted.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v4 = sub_22C271394();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE197B8();
  v6 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  sub_22BE5CE4C(&qword_27D9125B8, &qword_22C2B7AD8);
  sub_22C18DFEC();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE389B4();
  if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
  {
    type metadata accessor for UserTurnStarted(0);
    sub_22C18FCBC();
    v10 = *(v2 + v9);
    v11 = *(v1 + v9);
    if (v10)
    {
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    else if (v11)
    {
      goto LABEL_20;
    }

    sub_22C18FF2C();
    v14 = v14 && v12 == v13;
    if (v14 || (sub_22C274014() & 1) != 0)
    {
      v15 = *(v3 + 48);
      sub_22BE3D108();
      sub_22BE22814();
      sub_22BE3D108();
      sub_22BE22814();
      sub_22BE181B0(v0);
      if (!v14)
      {
        sub_22BE191CC();
        sub_22BE22814();
        sub_22BE181B0(v0 + v15);
        if (!v16)
        {
          v19 = sub_22BE38638();
          v20(v19);
          sub_22BE3D20C();
          sub_22BE20458(v21);
          sub_22BE1AB74();
          sub_22C272FD4();
          v22 = off_27D9120B8;
          v23 = sub_22BE19454();
          v22(v23);
          v24 = sub_22BE3C5E4();
          v22(v24);
          sub_22C18DC5C(v0, &qword_27D9120B0);
          goto LABEL_20;
        }

        v17 = sub_22BE2399C();
        v18(v17, v4);
LABEL_19:
        sub_22C18DC5C(v0, &qword_27D9125B8);
        goto LABEL_20;
      }

      sub_22BE181B0(v0 + v15);
      if (!v14)
      {
        goto LABEL_19;
      }

      sub_22C18DC5C(v0, &qword_27D9120B0);
    }
  }

LABEL_20:
  sub_22BE1AABC();
}

void static Request.== infix(_:_:)()
{
  sub_22BE19460();
  v7 = v6;
  v8 = sub_22BE2021C();
  v164 = type metadata accessor for DateTimeContext(v8);
  sub_22BE18000();
  MEMORY[0x28223BE20](v9);
  sub_22BE188B0();
  v10 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22C18E504(v12);
  v163 = sub_22BE5CE4C(&qword_27D9125C8, &unk_22C2B7AE0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE3E508();
  sub_22C271394();
  sub_22BE179D8();
  v167 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v165 = v16;
  v17 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE2BA30(v19, v155);
  v168 = sub_22BE5CE4C(&qword_27D9125B8, &qword_22C2B7AD8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE181D0(v21, v156);
  v173 = sub_22C26E1D4();
  sub_22BE179D8();
  v171 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  sub_22BE252B8(v24);
  v25 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v25);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE20168(v27, v157);
  v28 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A174();
  v172 = v30;
  v31 = sub_22BE183BC();
  type metadata accessor for RequestPrescribedPlan(v31);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v32);
  sub_22BE17CBC();
  v33 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v33);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1B01C();
  v35 = sub_22BE5CE4C(&qword_27D9125D0, &unk_22C2B7AF0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1B72C();
  sub_22C18EA54();
  static RequestContent.== infix(_:_:)();
  if ((v37 & 1) == 0)
  {
    goto LABEL_23;
  }

  v38 = type metadata accessor for Request(0);
  if (*(v2 + *(v38 + 20)) != *(v7 + *(v38 + 20)))
  {
    goto LABEL_23;
  }

  v158 = v1;
  v159 = v5;
  v160 = v38;
  v161 = v2;
  v39 = *(v35 + 48);
  sub_22C18F300();
  sub_22BE22814();
  sub_22BE22814();
  sub_22BE1AB5C(v0, 1, v4);
  v40 = v7;
  if (v41)
  {
    sub_22BE1AB5C(v0 + v39, 1, v4);
    if (v41)
    {
      sub_22C18DC5C(v0, &qword_27D911F58);
      goto LABEL_13;
    }

LABEL_11:
    v42 = &qword_27D9125D0;
    v43 = v0;
LABEL_22:
    sub_22C18DC5C(v43, v42);
    goto LABEL_23;
  }

  sub_22BE37490();
  sub_22BE22814();
  sub_22BE1AB5C(v0 + v39, 1, v4);
  if (v41)
  {
    sub_22C18E058();
    sub_22C171FFC();
    goto LABEL_11;
  }

  sub_22BE3A270();
  sub_22C171FA8(v0 + v39, v3);
  v44 = sub_22BE25C08();
  static RequestPrescribedPlan.== infix(_:_:)(v44, v45, v46, v47, v48, v49, v50, v51, v158, v159, v160, v2, v162, v163, v164, v165, v166, v167, v168, v169);
  v53 = v52;
  sub_22C171FFC();
  sub_22BE1AB1C();
  sub_22C171FFC();
  sub_22C18DC5C(v0, &qword_27D911F58);
  if ((v53 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v54 = *(v28 + 48);
  sub_22C0B1754();
  sub_22BE22814();
  sub_22C0B1754();
  sub_22BE22814();
  v55 = sub_22BE23E90();
  sub_22BE1AB5C(v55, v56, v173);
  if (v41)
  {
    sub_22BE1AB5C(v172 + v54, 1, v173);
    if (v41)
    {
      sub_22C18DC5C(v172, &qword_27D9082F0);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  sub_22BE22814();
  sub_22BE1AB5C(v172 + v54, 1, v173);
  if (v57)
  {
    sub_22BE1B940();
    v58 = sub_22BE200E0();
    v59(v58);
LABEL_21:
    v42 = &qword_27D90A8E8;
    v43 = v172;
    goto LABEL_22;
  }

  sub_22C18F338();
  v60(v170, v172 + v54, v173);
  sub_22BE18B28();
  sub_22BE20458(v61);
  sub_22BE1B5E0();
  v62 = sub_22C272FD4();
  v63 = *(v171 + 8);
  v64 = sub_22BE1C2A0();
  v63(v64);
  v65 = sub_22BE200E0();
  v63(v65);
  sub_22C18DC5C(v172, &qword_27D9082F0);
  if ((v62 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_25:
  v66 = v160[8];
  v67 = *(v161 + v66);
  v68 = *(v161 + v66 + 8);
  v69 = v40;
  v70 = (v40 + v66);
  v71 = v70[1];
  v72 = v70[2];
  if (!v68)
  {
    v92 = sub_22C18F248();
    sub_22BE3820C(v92, v93, v94);
    if (!v71)
    {
      v112 = sub_22C18FE08();
      sub_22BE3820C(v112, v113, v72);
      v114 = sub_22C18F248();
      sub_22BE37808(v114, v115, v116);
      goto LABEL_40;
    }

    v95 = sub_22C18E7B8();
    sub_22BE3820C(v95, v96, v97);
    goto LABEL_37;
  }

  if (!v71)
  {
    v98 = sub_22BE3C73C();
    sub_22BE3820C(v98, v99, v100);
    v101 = sub_22C18FE08();
    sub_22BE3820C(v101, v102, v72);
    v103 = sub_22BE3C73C();
    sub_22BE3820C(v103, v104, v105);

LABEL_37:
    v106 = sub_22BE3C73C();
    sub_22BE37808(v106, v107, v108);
    v109 = sub_22C18E7B8();
LABEL_38:
    sub_22BE37808(v109, v110, v111);
    goto LABEL_23;
  }

  if (v67 != *v70 || v68 != v71)
  {
    sub_22C18EA54();
    if ((sub_22C274014() & 1) == 0)
    {
      v126 = sub_22BE3C73C();
      sub_22BE3820C(v126, v127, v128);
      v129 = sub_22C18E7B8();
      sub_22BE3820C(v129, v130, v131);
      v132 = sub_22BE3C73C();
      sub_22BE3820C(v132, v133, v134);
      v135 = sub_22C18E7B8();
      sub_22BE37808(v135, v136, v137);

      v109 = sub_22BE3C73C();
      goto LABEL_38;
    }
  }

  v74 = sub_22BE18944();
  v76 = sub_22BE9693C(v74, v75);
  v77 = sub_22BE3C73C();
  sub_22BE3820C(v77, v78, v79);
  v80 = sub_22C18E7B8();
  sub_22BE3820C(v80, v81, v82);
  v83 = sub_22BE3C73C();
  sub_22BE3820C(v83, v84, v85);
  v86 = sub_22C18E7B8();
  sub_22BE37808(v86, v87, v88);

  v89 = sub_22BE3C73C();
  sub_22BE37808(v89, v90, v91);
  if ((v76 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_40:
  v117 = v160[9];
  v118 = *(v168 + 48);
  sub_22BE27B84();
  sub_22BE22814();
  sub_22BE27B84();
  sub_22BE22814();
  sub_22BE406A0();
  sub_22C18FD0C();
  sub_22BE1AB5C(v119, v120, v121);
  if (v41)
  {
    sub_22BE200F8(v169 + v118);
    v122 = v159;
    if (v41)
    {
      sub_22C18DC5C(v169, &qword_27D9120B0);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  sub_22BE22814();
  sub_22BE200F8(v169 + v118);
  v122 = v159;
  if (v123)
  {
    v124 = sub_22C18E474();
    v125(v124);
LABEL_48:
    v42 = &qword_27D9125B8;
    v43 = v169;
    goto LABEL_22;
  }

  sub_22C18F338();
  v138(v165, v169 + v118, v117);
  sub_22BE3D20C();
  sub_22BE20458(v139);
  sub_22C0B1B94();
  v140 = sub_22C272FD4();
  v141 = *(v167 + 8);
  v142 = sub_22BE191CC();
  v141(v142);
  v143 = sub_22BE33BE8();
  v141(v143);
  sub_22C18DC5C(v169, &qword_27D9120B0);
  if ((v140 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_51:
  v144 = v160[10];
  v145 = *(v69 + v144 + 8);
  if (!*(v161 + v144 + 8))
  {
    if (!v145)
    {

      goto LABEL_62;
    }

LABEL_60:

    goto LABEL_23;
  }

  if (!v145)
  {
    goto LABEL_60;
  }

  v146 = sub_22BE3A508(v161 + v144);
  if (v41)
  {
    v149 = v147 == v145;
  }

  else
  {
    v149 = 0;
  }

  if (v149 || (sub_22BE2BC78(v146, v147, v148) & 1) != 0)
  {
LABEL_62:
    v150 = *(v163 + 48);
    sub_22BE27B84();
    sub_22BE22814();
    sub_22BE27B84();
    sub_22BE22814();
    v151 = sub_22BE26188();
    sub_22BE1AB5C(v151, v152, v164);
    if (v41)
    {
      sub_22BE1AB5C(v158 + v150, 1, v164);
      if (v41)
      {
        sub_22C18DC5C(v158, &qword_27D911F50);
        goto LABEL_23;
      }
    }

    else
    {
      sub_22BE22814();
      sub_22BE1AB5C(v158 + v150, 1, v164);
      if (!v153)
      {
        sub_22BE43230();
        sub_22C171FA8(v158 + v150, v122);
        v154 = sub_22C26E114();
        if (v154)
        {
          MEMORY[0x2318A6980](v162 + *(v164 + 20), v122 + *(v164 + 20));
          sub_22C171FFC();
          sub_22BE3C5E4();
          sub_22C171FFC();
          sub_22C18DC5C(v158, &qword_27D911F50);
          goto LABEL_23;
        }

        sub_22C171FFC();
        sub_22BE1AB74();
        sub_22C171FFC();
        v42 = &qword_27D911F50;
        goto LABEL_71;
      }

      sub_22BE379D8();
      sub_22C171FFC();
    }

    v42 = &qword_27D9125C8;
LABEL_71:
    v43 = v158;
    goto LABEL_22;
  }

LABEL_23:
  sub_22BE1AABC();
}

void static Session.Plan.== infix(_:_:)()
{
  sub_22BE22B9C();
  v1 = sub_22C18E738(v0);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[5];
  v11 = v2[6];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (v12 || (sub_22C274014() & 1) != 0)
  {
    v13 = v4 == v8 && v5 == v9;
    if (v13 || (sub_22C18E18C(), (sub_22C274014() & 1) != 0))
    {
      sub_22BE29454();
      sub_22BE964E8();
      if ((v14 & 1) != 0 && v7 && v11 && (v6 != v10 || v7 != v11))
      {
        v16 = sub_22BE19454();
        sub_22C18F3BC(v16);
      }
    }
  }

  sub_22BE234D8();
}

BOOL static Action.== infix(_:_:)()
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Action(0);
  sub_22C18E728();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    sub_22BE3A508(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_22BE43248();
  if (!v11)
  {
    return 0;
  }

  sub_22C18F380(*(v5 + 28));
  sub_22BEA4440();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_22C18E728();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    sub_22BE3A508(v14);
    v18 = v11 && v16 == v17;
    if (!v18 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  sub_22C18F2C4(*(v5 + 36));
  v21 = v11 && v19 == v20;
  if (!v21 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (v1)
  {
    if (!v0)
    {
      return 0;
    }

    if (v5 == v2 && v1 == v0)
    {
      return v3 == v4;
    }

    sub_22BE1804C();
    sub_22C18EB68();
    if ((sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v0)
  {
    return 0;
  }

  return ((v3 ^ v4) & 1) == 0;
}

void static ActionCancellation.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  sub_22C26E684();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE17CBC();
  v4 = sub_22BE1AEE4();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B01C();
  v8 = sub_22BE5CE4C(&qword_27D9092B8, &qword_22C27FEA0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v11 = *(v10 + 56);
  sub_22BE324FC();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE181B0(v0);
  if (v12)
  {
    sub_22BE181B0(v0 + v11);
    if (v12)
    {
      sub_22C18DC5C(v0, &qword_27D907240);
LABEL_12:
      v23 = type metadata accessor for ActionCancellation(0);
      sub_22C18F344(*(v23 + 20));
      v15 = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22BE29454();
  sub_22BE22814();
  sub_22BE181B0(v0 + v11);
  if (v12)
  {
    v13 = sub_22BE36680();
    v14(v13);
LABEL_9:
    sub_22C18DC5C(v0, &qword_27D9092B8);
    goto LABEL_10;
  }

  sub_22C18EB74();
  v16 = sub_22BE3BD64();
  v17(v16);
  sub_22BE18F44();
  sub_22BE20458(v18);
  sub_22BE25C08();
  v19 = sub_22C272FD4();
  v20 = *(v2 + 8);
  v21 = sub_22BE3C5E4();
  v20(v21);
  v22 = sub_22BE36680();
  v20(v22);
  sub_22C18DC5C(v0, &qword_27D907240);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v15 = 0;
LABEL_13:
  sub_22BE1C1DC(v15);
  sub_22BE1AABC();
}

void static ClientAction.== infix(_:_:)()
{
  sub_22BE18378();
  if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
  {
    type metadata accessor for ClientAction(0);
    sub_22C18F27C();
    sub_22C18E1A0();
    v3 = v3 && v1 == v2;
    if (v3 || (sub_22C274014() & 1) != 0)
    {
      sub_22C18F380(*(v0 + 24));
      sub_22BEA6844();
      if (v4)
      {
        sub_22C18E728();
        if (v7)
        {
          if (!v5)
          {
            return;
          }

          sub_22BE3A508(v6);
          v10 = v3 && v8 == v9;
          if (!v10 && (sub_22C274014() & 1) == 0)
          {
            return;
          }
        }

        else if (v5)
        {
          return;
        }

        sub_22C18E728();
        if (v13)
        {
          if (!v11)
          {
            return;
          }

          sub_22BE3A508(v12);
          v16 = v3 && v14 == v15;
          if (!v16 && (sub_22C274014() & 1) == 0)
          {
            return;
          }
        }

        else if (v11)
        {
          return;
        }

        sub_22C18F380(*(v0 + 36));

        sub_22BEA6B1C();
      }
    }
  }
}

void static QueryStep.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE23C8C();
  type metadata accessor for ActionParameterContext(v3);
  sub_22C18DFEC();
  MEMORY[0x28223BE20](v4);
  sub_22BE38390();
  v5 = sub_22BE5CE4C(&qword_27D911F48, &unk_22C2B5CB0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  v7 = sub_22BE5CE4C(&qword_27D9125D8, &qword_22C2B7B00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E64();
  sub_22BE18944();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_14;
  }

  Step = type metadata accessor for QueryStep(0);
  v9 = *(v7 + 48);
  sub_22C18F844();
  sub_22C18F844();
  sub_22BE1AB5C(v1, 1, v2);
  if (!v10)
  {
    sub_22BE2590C();
    sub_22BE22814();
    sub_22BE1AB5C(v1 + v9, 1, v2);
    if (!v10)
    {
      sub_22C171FA8(v1 + v9, v0);
      sub_22BE232C8();
      static ActionParameterContext.== infix(_:_:)();
      v12 = v11;
      sub_22C171FFC();
      sub_22BE36658();
      sub_22C171FFC();
      sub_22C18DC5C(v1, &qword_27D911F48);
      if ((v12 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    sub_22C0E9830();
    sub_22C171FFC();
LABEL_10:
    sub_22C18DC5C(v1, &qword_27D9125D8);
    goto LABEL_14;
  }

  sub_22BE1AB5C(v1 + v9, 1, v2);
  if (!v10)
  {
    goto LABEL_10;
  }

  sub_22C18DC5C(v1, &qword_27D911F48);
LABEL_12:
  sub_22C18EA3C(*(Step + 24));
  static QueryPayload.== infix(_:_:)();
  if (v13)
  {
    sub_22C18F38C();
  }

LABEL_14:
  sub_22BE1AABC();
}

BOOL static Session.RecoverableError.== infix(_:_:)()
{
  sub_22BE18378();
  v2 = sub_22BE5CE4C(&qword_27D9125E0, &qword_22C2B7B08);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1AEF0();
  sub_22BE1A964(v0, v1);
  sub_22C18FAF4();
  v4 = static Session.PlanGenerationError.== infix(_:_:)(v1);
  sub_22C171FFC();
  sub_22BE1804C();
  sub_22C171FFC();
  return v4;
}

uint64_t static QueryStepResults.== infix(_:_:)()
{
  sub_22BE18378();
  sub_22BE9FFC4(*v0, *v1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  StepResults = type metadata accessor for QueryStepResults(0);
  sub_22BE3E750(StepResults);
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  sub_22C18EA3C(*(StepResults + 24));

  return sub_22C26E1B4();
}

BOOL static ActionResolverRequest.== infix(_:_:)()
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ActionResolverRequest(0);
  sub_22C18F27C();
  sub_22C18F380(v6);
  sub_22BEA5C9C();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = sub_22C18F380(v2[6]);
  if ((sub_22BF6FD98(v8, v9) & 1) == 0)
  {
    return 0;
  }

  sub_22C18F380(v2[7]);
  sub_22BEA657C();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_22BE43248();
  if (!v14)
  {
    return 0;
  }

  sub_22BE43248();
  if (!v14)
  {
    return 0;
  }

  sub_22C18F2C4(v2[10]);
  v14 = v14 && v12 == v13;
  if (!v14 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (v1)
  {
    if (v0)
    {
      if (v2 != v3 || v1 != v0)
      {
        sub_22BE1804C();
        sub_22C18EB68();
        if ((sub_22C274014() & 1) == 0)
        {
          return 0;
        }

        return ((v4 ^ v5) & 1) == 0;
      }

      if (v4 == v5)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v0)
  {
    return 0;
  }

  return ((v4 ^ v5) & 1) == 0;
}

uint64_t static SafetyModeException.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_22C274014() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

void static ContextRetrieved.== infix(_:_:)()
{
  sub_22BE9FED4();
  if (v0)
  {
    sub_22BE19454();

    sub_22BE9FED4();
  }
}

void static ToolRetrievalResponse.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C18E738(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v10 || (sub_22C274014() & 1) != 0)
  {
    v11 = v4 == v7 && v5 == v8;
    if (v11 || (sub_22BE29454(), sub_22BE3D108(), (sub_22C274014() & 1) != 0))
    {
      if (v6 == v9)
      {
        sub_22BE191CC();
        sub_22BE9FB68();
        if (v12)
        {
          sub_22BE19454();

          sub_22BEA5870();
        }
      }
    }
  }
}

void static StatementResult.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE17BC4();
  v5 = sub_22C26E1D4();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE38390();
  v9 = sub_22BE1AEE4();
  v11 = sub_22BE5CE4C(v9, v10);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE25CD0();
  v13 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E64();
  v16 = *(v15 + 56);
  sub_22BE260B8();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE3D108();
  sub_22BE22814();
  sub_22BE181B0(v2);
  if (!v17)
  {
    sub_22BE2590C();
    sub_22BE22814();
    sub_22BE181B0(v2 + v16);
    if (!v17)
    {
      sub_22C18EB74();
      v20(v1, v2 + v16, v5);
      sub_22BE18B28();
      sub_22BE20458(v21);
      sub_22BE232C8();
      v22 = sub_22C272FD4();
      v23 = *(v7 + 8);
      v24 = sub_22BE1804C();
      v23(v24);
      v25 = sub_22BE431C0();
      v23(v25);
      sub_22C18DC5C(v2, &qword_27D9082F0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    }

    v18 = sub_22BE431C0();
    v19(v18);
LABEL_9:
    sub_22C18DC5C(v2, &qword_27D90A8E8);
    goto LABEL_40;
  }

  sub_22BE181B0(v2 + v16);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_22C18DC5C(v2, &qword_27D9082F0);
LABEL_11:
  v26 = type metadata accessor for StatementResult(0);
  sub_22C18FE20(v26[5]);
  static StatementResultPayload.== infix(_:_:)();
  if (v27)
  {
    sub_22C18FE20(v26[6]);
    if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
    {
      sub_22C18FE20(v26[7]);
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        sub_22C18FE20(v26[8]);
        if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
        {
          v28 = v26[9];
          v29 = *(v0 + v28);
          v30 = *(v0 + v28 + 8);
          v32 = *(v0 + v28 + 16);
          v31 = *(v0 + v28 + 24);
          v33 = (v4 + v28);
          v34 = v33[1];
          v35 = v33[2];
          v36 = v33[3];
          if (v30)
          {
            if (v34)
            {
              v37 = v29 == *v33 && v30 == v34;
              if (v37 || (sub_22BE2590C(), sub_22BE3D108(), (sub_22C274014() & 1) != 0))
              {
                if (!v31)
                {
                  v67 = sub_22BE46550();
                  sub_22C172920(v67, v68);
                  if (!v36)
                  {
                    v83 = sub_22BE1AEE4();
                    sub_22C172920(v83, v84);
                    v85 = sub_22BE46550();
                    sub_22C172920(v85, v86);
                    v81 = sub_22BE1AEE4();
                    goto LABEL_43;
                  }

LABEL_37:
                  v69 = sub_22C18E18C();
                  sub_22C172920(v69, v70);
                  v71 = sub_22BE46550();
                  sub_22C172920(v71, v72);
                  v73 = sub_22C18E18C();
                  sub_22C1083D4(v73, v74);
LABEL_38:

                  v59 = sub_22BE3794C();
                  goto LABEL_39;
                }

                if (v36)
                {
                  if (v32 != v35 || v31 != v36)
                  {
                    sub_22BE1804C();
                    sub_22C18EA6C();
                    v89 = sub_22C274014();
                    v39 = sub_22BE3794C();
                    sub_22C172920(v39, v40);
                    v41 = sub_22C18E18C();
                    sub_22C172920(v41, v42);
                    v43 = sub_22BE3794C();
                    sub_22C172920(v43, v44);
                    v45 = sub_22C18E18C();
                    sub_22C1083D4(v45, v46);
                    if (v89)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_38;
                  }

                  v75 = sub_22BE3794C();
                  sub_22C172920(v75, v76);
                  sub_22BE1AEE4();
                  sub_22C18E8F4();
                  sub_22C172920(v77, v78);
                  v79 = sub_22BE3794C();
                  sub_22C172920(v79, v80);
                  sub_22BE1AEE4();
                  sub_22C18E8F4();
LABEL_43:
                  sub_22C1083D4(v81, v82);
LABEL_44:

                  v87 = sub_22BE3794C();
                  sub_22C1083D4(v87, v88);
                  goto LABEL_40;
                }
              }

              v61 = sub_22BE46550();
              sub_22C172920(v61, v62);
              goto LABEL_37;
            }

            v51 = sub_22BE3794C();
            sub_22C172920(v51, v52);
            sub_22C18EA6C();
            sub_22C172920(v53, v54);
            v55 = sub_22BE3794C();
            sub_22C172920(v55, v56);

LABEL_33:
            v57 = sub_22BE3794C();
            sub_22C1083D4(v57, v58);
            v59 = sub_22C18E18C();
LABEL_39:
            sub_22C1083D4(v59, v60);
            goto LABEL_40;
          }

          sub_22C18FE08();
          sub_22C18E8F4();
          sub_22C172920(v47, v48);
          if (v34)
          {
            v49 = sub_22C18E18C();
            sub_22C172920(v49, v50);
            goto LABEL_33;
          }

          sub_22C18EA6C();
          sub_22C172920(v63, v64);
          sub_22C18FE08();
          sub_22C18E8F4();
          sub_22C1083D4(v65, v66);
        }
      }
    }
  }

LABEL_40:
  sub_22BE1AABC();
}

void static ExternalAgentRequest.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v3 = sub_22C26E1D4();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE17CBC();
  v7 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v9 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE25CD0();
  sub_22BE1B5EC();
  static RequestContent.== infix(_:_:)();
  if ((v11 & 1) == 0)
  {
    goto LABEL_25;
  }

  v78 = v5;
  v77 = type metadata accessor for ExternalAgentRequest(0);
  v12 = *(v9 + 48);
  sub_22C18F844();
  sub_22C18F844();
  sub_22BE181B0(v2);
  if (v13)
  {
    sub_22BE181B0(v2 + v12);
    if (v13)
    {
      sub_22C18DC5C(v2, &qword_27D9082F0);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_22BE29454();
  sub_22BE22814();
  sub_22BE181B0(v2 + v12);
  if (v13)
  {
    v14 = sub_22BE39058();
    v15(v14, v3);
LABEL_10:
    sub_22C18DC5C(v2, &qword_27D90A8E8);
    goto LABEL_25;
  }

  sub_22C18EB74();
  v16 = sub_22BE3BD64();
  v17(v16);
  sub_22BE18B28();
  sub_22BE20458(v18);
  sub_22BE25C08();
  v19 = sub_22C272FD4();
  v20 = *(v78 + 8);
  v21 = sub_22BE3C5E4();
  v20(v21);
  v22 = sub_22BE36680();
  v20(v22);
  sub_22C18DC5C(v2, &qword_27D9082F0);
  if (v19)
  {
LABEL_12:
    v23 = *(v77 + 24);
    v24 = v1 + v23;
    v25 = *(v1 + v23);
    v26 = *(v24 + 8);
    v27 = (v0 + v23);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    if (v26)
    {
      if (v29)
      {
        v31 = v25 == v28 && v26 == v29;
        if (v31 || (sub_22BE191CC(), (sub_22C274014() & 1) != 0))
        {
          v32 = sub_22BE18944();
          sub_22BE9693C(v32, v33);
          v34 = sub_22BE28728();
          sub_22BE3820C(v34, v35, v36);
          v37 = sub_22BE29454();
          sub_22BE3820C(v37, v38, v30);
          v39 = sub_22BE28728();
          sub_22BE3820C(v39, v40, v41);
          v42 = sub_22BE29454();
          sub_22BE37808(v42, v43, v30);

          v44 = sub_22BE28728();
          sub_22BE37808(v44, v45, v46);
          goto LABEL_25;
        }

        v67 = sub_22BE28728();
        sub_22BE3820C(v67, v68, v69);
        v70 = sub_22BE29454();
        sub_22BE3820C(v70, v71, v30);
        v72 = sub_22BE28728();
        sub_22BE3820C(v72, v73, v74);
        v75 = sub_22BE29454();
        sub_22BE37808(v75, v76, v30);

        v61 = sub_22BE28728();
LABEL_24:
        sub_22BE37808(v61, v62, v63);
        goto LABEL_25;
      }

      v52 = sub_22BE28728();
      sub_22BE3820C(v52, v53, v54);
      sub_22BE3820C(v28, 0, v30);
      v55 = sub_22BE28728();
      sub_22BE3820C(v55, v56, v57);
    }

    else
    {
      v47 = sub_22C18F248();
      sub_22BE3820C(v47, v48, v49);
      if (!v29)
      {
        sub_22BE3820C(v28, 0, v30);
        v64 = sub_22C18F248();
        sub_22BE37808(v64, v65, v66);
        goto LABEL_25;
      }

      v50 = sub_22BE29454();
      sub_22BE3820C(v50, v51, v30);
    }

    v58 = sub_22BE28728();
    sub_22BE37808(v58, v59, v60);
    v61 = sub_22BE29454();
    v63 = v30;
    goto LABEL_24;
  }

LABEL_25:
  sub_22BE1AABC();
}

uint64_t static ExternalAgentOutcome.== infix(_:_:)()
{
  sub_22BE18378();
  if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for ExternalAgentOutcome(0);
  sub_22BE3E750(v0);
  if ((sub_22C26F884() & 1) == 0)
  {
    return 0;
  }

  v1 = sub_22C18F380(*(v0 + 24));

  return sub_22BE9693C(v1, v2);
}

uint64_t sub_22C12BC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22C18E738(a1);
  v7 = v4 == *v5 && *(v6 + 8) == v5[1];
  if (!v7 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v8 = sub_22BE19454();

  return v9(v8);
}

void static UndoRedoRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = v4;
  sub_22BE33690();
  sub_22C26E684();
  sub_22BE1BF18();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE294E0();
  v9 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE20168(v11, v46);
  v50 = sub_22BE5CE4C(&qword_27D9092B8, &qword_22C27FEA0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v51 = v13;
  sub_22BE183BC();
  v14 = sub_22C26E1D4();
  sub_22BE179D8();
  v52 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22BE188B0();
  v17 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1AEF0();
  v19 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE2C64C();
  v21 = *v0 == *v5 && v0[1] == v5[1];
  if (!v21 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_28;
  }

  v47 = v1;
  v48 = v7;
  v49 = type metadata accessor for UndoRedoRequest(0);
  v22 = *(v19 + 48);
  sub_22C18F9C4();
  sub_22BE22814();
  sub_22BE22814();
  sub_22BE181B0(v3);
  if (!v21)
  {
    sub_22BE22814();
    sub_22BE181B0(v3 + v22);
    if (!v23)
    {
      sub_22C18F338();
      v28(v2, v3 + v22, v14);
      sub_22BE18B28();
      sub_22BE20458(v29);
      v30 = sub_22C272FD4();
      v31 = *(v52 + 8);
      v31(v2, v14);
      v32 = sub_22BE1804C();
      (v31)(v32);
      sub_22C18DC5C(v3, &qword_27D9082F0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    v24 = sub_22BE1804C();
    v25(v24);
LABEL_14:
    v26 = &qword_27D90A8E8;
    v27 = v3;
LABEL_15:
    sub_22C18DC5C(v27, v26);
    goto LABEL_28;
  }

  sub_22BE181B0(v3 + v22);
  if (!v21)
  {
    goto LABEL_14;
  }

  sub_22C18DC5C(v3, &qword_27D9082F0);
LABEL_17:
  if (*(v0 + *(v49 + 24)) == *(v5 + *(v49 + 24)) && (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) != 0)
  {
    v33 = *(v49 + 32);
    v34 = *(v50 + 48);
    sub_22BE27B84();
    sub_22BE22814();
    sub_22BE27B84();
    sub_22BE22814();
    sub_22C18FD0C();
    sub_22BE1AB5C(v35, v36, v37);
    if (v21)
    {
      sub_22BE200F8(v51 + v34);
      if (v21)
      {
        sub_22C18DC5C(v51, &qword_27D907240);
        goto LABEL_28;
      }
    }

    else
    {
      sub_22BE22814();
      sub_22BE200F8(v51 + v34);
      if (!v38)
      {
        sub_22C18F338();
        v41(v47, v51 + v34, v33);
        sub_22BE18F44();
        sub_22BE20458(v42);
        sub_22BE38970();
        sub_22C272FD4();
        v43 = *(v48 + 8);
        v44 = sub_22BE191CC();
        v43(v44);
        v45 = sub_22BE25C08();
        v43(v45);
        sub_22C18DC5C(v51, &qword_27D907240);
        goto LABEL_28;
      }

      v39 = sub_22BE39058();
      v40(v39, v33);
    }

    v26 = &qword_27D9092B8;
    v27 = v51;
    goto LABEL_15;
  }

LABEL_28:
  sub_22BE1AABC();
}

void static ClientUndoRedoRequest.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C18E58C();
  v5 = sub_22C26E684();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE197B8();
  v9 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E64();
  sub_22BE5CE4C(&qword_27D9092B8, &qword_22C27FEA0);
  sub_22C18DFEC();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE389B4();
  if (sub_22C26E1B4())
  {
    v12 = type metadata accessor for ClientUndoRedoRequest(0);
    if (*(v3 + *(v12 + 20)) == *(v2 + *(v12 + 20)))
    {
      sub_22C18FFA8(*(v12 + 24));
      if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
      {
        v13 = *(v4 + 48);
        sub_22C19013C();
        sub_22C19005C();
        sub_22BE181B0(v1);
        if (!v14)
        {
          sub_22BE191CC();
          sub_22BE22814();
          sub_22BE181B0(v1 + v13);
          if (!v14)
          {
            sub_22C18EB74();
            v17(v0, v1 + v13, v5);
            sub_22BE18F44();
            sub_22BE20458(v18);
            sub_22BE1AB74();
            sub_22C272FD4();
            v19 = *(v7 + 8);
            v20 = sub_22BE19454();
            v19(v20);
            v21 = sub_22BE3C5E4();
            v19(v21);
            sub_22C18DC5C(v1, &qword_27D907240);
            goto LABEL_13;
          }

          v15 = sub_22BE3C5E4();
          v16(v15);
LABEL_12:
          sub_22C18DC5C(v1, &qword_27D9092B8);
          goto LABEL_13;
        }

        sub_22BE181B0(v1 + v13);
        if (!v14)
        {
          goto LABEL_12;
        }

        sub_22C18DC5C(v1, &qword_27D907240);
      }
    }
  }

LABEL_13:
  sub_22BE1AABC();
}

uint64_t sub_22C12C514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  sub_22BE18378();
  if ((v7() & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  v9 = sub_22BE3E750(v8);
  if ((a5(v9) & 1) == 0)
  {
    return 0;
  }

  sub_22C18EA3C(*(v8 + 24));

  return _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
}

void static QueryDecorationResult.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v3 = sub_22C271A34();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE17CBC();
  v7 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v9 = sub_22BE5CE4C(&qword_27D9125E8, &qword_22C2B7B10);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE25CD0();
  sub_22BE9FCA0();
  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  v26 = v5;
  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  v12 = *(v9 + 48);
  sub_22C18F844();
  sub_22C18F844();
  sub_22BE181B0(v2);
  if (v13)
  {
    sub_22BE181B0(v2 + v12);
    if (v13)
    {
      sub_22C18DC5C(v2, &qword_27D912018);
      goto LABEL_12;
    }

LABEL_10:
    sub_22C18DC5C(v2, &qword_27D9125E8);
LABEL_14:
    v24 = 0;
    goto LABEL_15;
  }

  sub_22BE29454();
  sub_22BE22814();
  sub_22BE181B0(v2 + v12);
  if (v13)
  {
    v14 = sub_22BE39058();
    v15(v14, v3);
    goto LABEL_10;
  }

  sub_22C18EB74();
  v16 = sub_22BE3BD64();
  v17(v16);
  sub_22BE33C50();
  sub_22BE20458(v18);
  sub_22BE25C08();
  v19 = sub_22C272FD4();
  v20 = *(v26 + 8);
  v21 = sub_22BE3C5E4();
  v20(v21);
  v22 = sub_22BE36680();
  v20(v22);
  sub_22C18DC5C(v2, &qword_27D912018);
  if ((v19 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  sub_22BE9FCE8(*(v1 + *(DecorationResult + 24)), *(v0 + *(DecorationResult + 24)));
  if ((v23 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_22BE9FED4();
LABEL_15:
  sub_22BE1C1DC(v24);
  sub_22BE1AABC();
}

uint64_t static QueryDecorationPrePlannerResult.== infix(_:_:)()
{
  sub_22BE18378();
  if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) != 0 && ((type metadata accessor for QueryDecorationPrePlannerResult(0), sub_22C18F27C(), sub_22C18E1A0(), v5) ? (v5 = v3 == v4) : (v5 = 0), v5 || (sub_22C274014()))
  {
    v6 = *(v2 + 24);
    v7 = *(v1 + v6 + 8);
    v14 = *(v1 + v6);
    v15 = v7;
    v8 = (v0 + v6);
    v9 = *v8;
    LOBYTE(v8) = *(v8 + 8);
    v12 = v9;
    v13 = v8;

    v10 = static QueryDecorationPrePlannerResultPayload.== infix(_:_:)(&v14, &v12);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_22C12C99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  sub_22BE18378();
  if ((v6() & 1) == 0)
  {
    return 0;
  }

  v7 = a4(0);
  v8 = sub_22C18F380(*(v7 + 20));

  return a5(v8);
}

void static RequestAmendment.== infix(_:_:)()
{
  sub_22BE18378();
  if (sub_22C26E1B4())
  {
    v0 = type metadata accessor for RequestAmendment(0);
    sub_22BE3E750(v0);

    static RequestContent.== infix(_:_:)();
  }
}

uint64_t sub_22C12CAAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x536E6F6973736573 && a2 == 0xEC00000074726174;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E72755472657375 && a2 == 0xEF64657472617453;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000022C2DAA80 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616572436E616C70 && a2 == 0xEB00000000646574;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72436E6F69746361 && a2 == 0xED00006465746165;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x61436E6F69746361 && a2 == 0xEE0064656C65636ELL;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x800000022C2DAAB0 == a2;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x4373656972657571 && a2 == 0xEE00646574616572;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C626169726176 && a2 == 0xEC00000074655373;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x800000022C2DAAF0 == a2;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6C61636974697263 && a2 == 0xED0000726F727245;
                        if (v16 || (sub_22C274014() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x616C50664F646E65 && a2 == 0xE90000000000006ELL;
                          if (v17 || (sub_22C274014() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x74616E696D726574 && a2 == 0xE900000000000065;
                            if (v18 || (sub_22C274014() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x4573656972657571 && a2 == 0xEF64657475636578;
                              if (v19 || (sub_22C274014() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001CLL && 0x800000022C2DAB20 == a2;
                                if (v20 || (sub_22C274014() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000020 && 0x800000022C2DBDB0 == a2;
                                  if (v21 || (sub_22C274014() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x800000022C2DAB40 == a2;
                                    if (v22 || (sub_22C274014() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000013 && 0x800000022C2DAB60 == a2;
                                      if (v23 || (sub_22C274014() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000010 && 0x800000022C2DBDE0 == a2;
                                        if (v24 || (sub_22C274014() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x746552736C6F6F74 && a2 == 0xEE00646576656972;
                                          if (v25 || (sub_22C274014() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000011 && 0x800000022C2DABA0 == a2;
                                            if (v26 || (sub_22C274014() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000017 && 0x800000022C2DABD0 == a2;
                                              if (v27 || (sub_22C274014() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000012 && 0x800000022C2DABF0 == a2;
                                                if (v28 || (sub_22C274014() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000014 && 0x800000022C2DAC10 == a2;
                                                  if (v29 || (sub_22C274014() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000014 && 0x800000022C2DAC30 == a2;
                                                    if (v30 || (sub_22C274014() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000023 && 0x800000022C2DAC50 == a2;
                                                      if (v31 || (sub_22C274014() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6F7365526C6F6F74 && a2 == 0xEE006E6F6974756CLL;
                                                        if (v32 || (sub_22C274014() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6F6465526F646E75 && a2 == 0xEF74736575716552;
                                                          if (v33 || (sub_22C274014() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000015 && 0x800000022C2DACA0 == a2;
                                                            if (v34 || (sub_22C274014() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000015 && 0x800000022C2DACC0 == a2;
                                                              if (v35 || (sub_22C274014() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000014 && 0x800000022C2DACE0 == a2;
                                                                if (v36 || (sub_22C274014() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000015 && 0x800000022C2DAD00 == a2;
                                                                  if (v37 || (sub_22C274014() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000010 && 0x800000022C2D3750 == a2;
                                                                    if (v38 || (sub_22C274014() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD00000000000001FLL && 0x800000022C2DAD20 == a2;
                                                                      if (v39 || (sub_22C274014() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0x7461745370696B73 && a2 == 0xED0000746E656D65;
                                                                        if (v40 || (sub_22C274014() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000025 && 0x800000022C2DAD50 == a2;
                                                                          if (v41 || (sub_22C274014() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000010 && 0x800000022C2DAD80 == a2;
                                                                            if (v42 || (sub_22C274014() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000014 && 0x800000022C2DADA0 == a2;
                                                                              if (v43 || (sub_22C274014() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000017 && 0x800000022C2DADC0 == a2;
                                                                                if (v44 || (sub_22C274014() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000010 && 0x800000022C2DADE0 == a2;
                                                                                  if (v45 || (sub_22C274014() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD00000000000001ALL && 0x800000022C2DAE00 == a2;
                                                                                    if (v46 || (sub_22C274014() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000022 && 0x800000022C2DAE20 == a2;
                                                                                      if (v47 || (sub_22C274014() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else if (a1 == 0xD000000000000014 && 0x800000022C2DAE50 == a2)
                                                                                      {

                                                                                        return 43;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v49 = sub_22C274014();

                                                                                        if (v49)
                                                                                        {
                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          return 44;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C12D784(uint64_t a1)
{
  v2 = sub_22C1737D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12D7C0(uint64_t a1)
{
  v2 = sub_22C1737D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12D7FC(uint64_t a1)
{
  v2 = sub_22C173828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12D838(uint64_t a1)
{
  v2 = sub_22C173828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12D874(uint64_t a1)
{
  v2 = sub_22C173534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12D8B0(uint64_t a1)
{
  v2 = sub_22C173534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12D8EC(uint64_t a1)
{
  v2 = sub_22C172964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12D928(uint64_t a1)
{
  v2 = sub_22C172964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12D964(uint64_t a1)
{
  v2 = sub_22C173780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12D9A0(uint64_t a1)
{
  v2 = sub_22C173780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12D9DC(uint64_t a1)
{
  v2 = sub_22C172F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DA18(uint64_t a1)
{
  v2 = sub_22C172F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C12CAAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C12DA7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C12D77C();
  *a1 = result;
  return result;
}

uint64_t sub_22C12DAA4(uint64_t a1)
{
  v2 = sub_22BE32B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DAE0(uint64_t a1)
{
  v2 = sub_22BE32B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DB1C(uint64_t a1)
{
  v2 = sub_22C172B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DB58(uint64_t a1)
{
  v2 = sub_22C172B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DB94(uint64_t a1)
{
  v2 = sub_22C173294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DBD0(uint64_t a1)
{
  v2 = sub_22C173294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DC0C(uint64_t a1)
{
  v2 = sub_22C172DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DC48(uint64_t a1)
{
  v2 = sub_22C172DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DC84(uint64_t a1)
{
  v2 = sub_22C173630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DCC0(uint64_t a1)
{
  v2 = sub_22C173630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DCFC(uint64_t a1)
{
  v2 = sub_22C1735DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DD38(uint64_t a1)
{
  v2 = sub_22C1735DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DD74(uint64_t a1)
{
  v2 = sub_22C173144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DDB0(uint64_t a1)
{
  v2 = sub_22C173144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DDEC(uint64_t a1)
{
  v2 = sub_22C172CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DE28(uint64_t a1)
{
  v2 = sub_22C172CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DE64(uint64_t a1)
{
  v2 = sub_22BE48A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DEA0(uint64_t a1)
{
  v2 = sub_22BE48A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DEDC(uint64_t a1)
{
  v2 = sub_22BE45BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DF18(uint64_t a1)
{
  v2 = sub_22BE45BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DF54(uint64_t a1)
{
  v2 = sub_22C173048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12DF90(uint64_t a1)
{
  v2 = sub_22C173048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12DFCC(uint64_t a1)
{
  v2 = sub_22C172A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E008(uint64_t a1)
{
  v2 = sub_22C172A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E044(uint64_t a1)
{
  v2 = sub_22C1729B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E080(uint64_t a1)
{
  v2 = sub_22C1729B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E0BC(uint64_t a1)
{
  v2 = sub_22C17372C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E0F8(uint64_t a1)
{
  v2 = sub_22C17372C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E134(uint64_t a1)
{
  v2 = sub_22C173588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E170(uint64_t a1)
{
  v2 = sub_22C173588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E1AC(uint64_t a1)
{
  v2 = sub_22C172D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E1E8(uint64_t a1)
{
  v2 = sub_22C172D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E224(uint64_t a1)
{
  v2 = sub_22C172E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E260(uint64_t a1)
{
  v2 = sub_22C172E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E29C(uint64_t a1)
{
  v2 = sub_22C173684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E2D8(uint64_t a1)
{
  v2 = sub_22C173684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E314(uint64_t a1)
{
  v2 = sub_22C172C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E350(uint64_t a1)
{
  v2 = sub_22C172C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E38C(uint64_t a1)
{
  v2 = sub_22C173924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E3C8(uint64_t a1)
{
  v2 = sub_22C173924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E404(uint64_t a1)
{
  v2 = sub_22C17348C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E440(uint64_t a1)
{
  v2 = sub_22C17348C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E47C(uint64_t a1)
{
  v2 = sub_22C17333C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E4B8(uint64_t a1)
{
  v2 = sub_22C17333C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E4F4(uint64_t a1)
{
  v2 = sub_22C1733E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E530(uint64_t a1)
{
  v2 = sub_22C1733E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E56C(uint64_t a1)
{
  v2 = sub_22BE32DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E5A8(uint64_t a1)
{
  v2 = sub_22BE32DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E5E4(uint64_t a1)
{
  v2 = sub_22C172D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E620(uint64_t a1)
{
  v2 = sub_22C172D00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E65C(uint64_t a1)
{
  v2 = sub_22C172A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E698(uint64_t a1)
{
  v2 = sub_22C172A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E6D4(uint64_t a1)
{
  v2 = sub_22C173978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E710(uint64_t a1)
{
  v2 = sub_22C173978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E74C(uint64_t a1)
{
  v2 = sub_22C17309C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E788(uint64_t a1)
{
  v2 = sub_22C17309C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E7C4(uint64_t a1)
{
  v2 = sub_22C1730F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E800(uint64_t a1)
{
  v2 = sub_22C1730F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E83C(uint64_t a1)
{
  v2 = sub_22BE46594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E878(uint64_t a1)
{
  v2 = sub_22BE46594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E8B4(uint64_t a1)
{
  v2 = sub_22C172FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E8F0(uint64_t a1)
{
  v2 = sub_22C172FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E92C(uint64_t a1)
{
  v2 = sub_22C172BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E968(uint64_t a1)
{
  v2 = sub_22C172BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12E9A4(uint64_t a1)
{
  v2 = sub_22C1731EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12E9E0(uint64_t a1)
{
  v2 = sub_22C1731EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12EA1C(uint64_t a1)
{
  v2 = sub_22C172EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12EA58(uint64_t a1)
{
  v2 = sub_22C172EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12EA94(uint64_t a1)
{
  v2 = sub_22C172EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12EAD0(uint64_t a1)
{
  v2 = sub_22C172EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12EB0C(uint64_t a1)
{
  v2 = sub_22C172FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12EB48(uint64_t a1)
{
  v2 = sub_22C172FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12EB84(uint64_t a1)
{
  v2 = sub_22C173A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12EBC0(uint64_t a1)
{
  v2 = sub_22C173A20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C12EBFC(uint64_t a1)
{
  v2 = sub_22C1736D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C12EC38(uint64_t a1)
{
  v2 = sub_22C1736D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Event.Payload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v668 = v21;
  v23 = v22;
  v661 = v24;
  v25 = sub_22BE5CE4C(&qword_27D9129B0, &qword_22C2B7C80);
  sub_22BE18910(v25, &v657);
  v640[1] = v26;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A174();
  sub_22BF0AFA0(v28);
  v29 = sub_22BE5CE4C(&qword_27D9129B8, &qword_22C2B7C88);
  sub_22BE18910(v29, &v656);
  v639[1] = v30;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE39404(v32);
  v33 = sub_22BE5CE4C(&qword_27D9129C0, &qword_22C2B7C90);
  sub_22BE18910(v33, &v655);
  v638[1] = v34;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE44798(v36);
  v37 = sub_22BE5CE4C(&qword_27D9129C8, &qword_22C2B7C98);
  sub_22BE18910(v37, &v654);
  v637[1] = v38;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1A174();
  sub_22BE190A8(v40);
  v41 = sub_22BE5CE4C(&qword_27D9129D0, &qword_22C2B7CA0);
  sub_22BE18910(v41, &v653);
  v636[1] = v42;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22C18E4F0(v44);
  v45 = sub_22BE5CE4C(&qword_27D9129D8, &qword_22C2B7CA8);
  sub_22BE18910(v45, &v652);
  v635[1] = v46;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1A174();
  sub_22BE190A8(v48);
  v49 = sub_22BE5CE4C(&qword_27D9129E0, &qword_22C2B7CB0);
  sub_22BE18910(v49, &v651);
  v634[1] = v50;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE1A174();
  sub_22BE190A8(v52);
  v53 = sub_22BE5CE4C(&qword_27D9129E8, &qword_22C2B7CB8);
  sub_22BE18910(v53, &v650);
  v633[1] = v54;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v55);
  sub_22BE1A174();
  sub_22BE190A8(v56);
  v57 = sub_22BE5CE4C(&qword_27D9129F0, &qword_22C2B7CC0);
  sub_22BE18910(v57, &v649);
  v632[1] = v58;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v59);
  sub_22BE1A174();
  sub_22BE190A8(v60);
  v61 = sub_22BE5CE4C(&qword_27D9129F8, &qword_22C2B7CC8);
  sub_22BE18910(v61, &v648);
  v631[1] = v62;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v63);
  sub_22BE1A174();
  sub_22BE190A8(v64);
  v65 = sub_22BE5CE4C(&qword_27D912A00, &qword_22C2B7CD0);
  sub_22BE18910(v65, &v647);
  v630[1] = v66;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v67);
  sub_22BE1A174();
  sub_22BE190A8(v68);
  v69 = sub_22BE5CE4C(&qword_27D912A08, &qword_22C2B7CD8);
  sub_22BE18910(v69, &v646);
  v629[1] = v70;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v71);
  sub_22BE1A174();
  sub_22BE190A8(v72);
  v73 = sub_22BE5CE4C(&qword_27D912A10, &qword_22C2B7CE0);
  sub_22BE18910(v73, &v645);
  v628[1] = v74;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v75);
  sub_22BE1A174();
  sub_22BE190A8(v76);
  v77 = sub_22BE5CE4C(&qword_27D912A18, &qword_22C2B7CE8);
  sub_22BE18910(v77, &v644);
  v627[2] = v78;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v79);
  sub_22BE1A174();
  sub_22BE190A8(v80);
  v81 = sub_22BE5CE4C(&qword_27D912A20, &qword_22C2B7CF0);
  sub_22BE18910(v81, &v643);
  v627[0] = v82;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v83);
  sub_22BE1A174();
  sub_22BE190A8(v84);
  v85 = sub_22BE5CE4C(&qword_27D912A28, &qword_22C2B7CF8);
  sub_22BE18910(v85, &v642);
  v626 = v86;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v87);
  sub_22BE1A174();
  sub_22BE190A8(v88);
  v89 = sub_22BE5CE4C(&qword_27D912A30, &qword_22C2B7D00);
  sub_22BE18910(v89, &v641);
  v625 = v90;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v91);
  sub_22BE1A174();
  sub_22BE190A8(v92);
  v93 = sub_22BE5CE4C(&qword_27D912A38, &qword_22C2B7D08);
  sub_22BE18910(v93, v640);
  v624 = v94;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v95);
  sub_22BE1A174();
  sub_22BE190A8(v96);
  v97 = sub_22BE5CE4C(&qword_27D912A40, &qword_22C2B7D10);
  sub_22BE18910(v97, v639);
  v623 = v98;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v99);
  sub_22BE1A174();
  sub_22BE190A8(v100);
  v101 = sub_22BE5CE4C(&qword_27D912A48, &qword_22C2B7D18);
  sub_22BE18910(v101, v638);
  v622 = v102;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v103);
  sub_22BE1A174();
  sub_22BE190A8(v104);
  v105 = sub_22BE5CE4C(&qword_27D912A50, &qword_22C2B7D20);
  sub_22BE18910(v105, v637);
  v621 = v106;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v107);
  sub_22BE1A174();
  sub_22BE190A8(v108);
  v109 = sub_22BE5CE4C(&qword_27D912A58, &qword_22C2B7D28);
  sub_22BE18910(v109, v636);
  v620 = v110;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v111);
  sub_22BE1A174();
  sub_22BE190A8(v112);
  v113 = sub_22BE5CE4C(&qword_27D912A60, &qword_22C2B7D30);
  sub_22BE18910(v113, v635);
  v618[1] = v114;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v115);
  sub_22BE1A174();
  sub_22BE190A8(v116);
  v117 = sub_22BE5CE4C(&qword_27D912A68, &qword_22C2B7D38);
  sub_22BE18910(v117, v634);
  v617[1] = v118;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v119);
  sub_22BE1A174();
  sub_22BE190A8(v120);
  v121 = sub_22BE5CE4C(&qword_27D912A70, &qword_22C2B7D40);
  sub_22BE18910(v121, v633);
  v616[2] = v122;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v123);
  sub_22BE1A174();
  sub_22BE190A8(v124);
  v125 = sub_22BE5CE4C(&qword_27D912A78, &qword_22C2B7D48);
  sub_22BE18910(v125, v632);
  v616[0] = v126;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v127);
  sub_22BE1A174();
  sub_22BE190A8(v128);
  v129 = sub_22BE5CE4C(&qword_27D912A80, &qword_22C2B7D50);
  sub_22BE18910(v129, v631);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v130);
  sub_22BE1A174();
  sub_22BE190A8(v131);
  v132 = sub_22BE5CE4C(&qword_27D912A88, &qword_22C2B7D58);
  sub_22BE18910(v132, v630);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v133);
  sub_22BE1A174();
  sub_22BE190A8(v134);
  v135 = sub_22BE5CE4C(&qword_27D912A90, &qword_22C2B7D60);
  sub_22BE18910(v135, v629);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v136);
  sub_22BE1A174();
  sub_22BE190A8(v137);
  v138 = sub_22BE5CE4C(&qword_27D912A98, &qword_22C2B7D68);
  sub_22BE18910(v138, v628);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v139);
  sub_22BE1A174();
  sub_22BE190A8(v140);
  v660 = sub_22BE5CE4C(&qword_27D912AA0, &qword_22C2B7D70);
  sub_22BE179D8();
  v665 = v141;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v142);
  sub_22BE1A174();
  sub_22BE190A8(v143);
  v144 = sub_22BE5CE4C(&qword_27D912AA8, &qword_22C2B7D78);
  sub_22BE18910(v144, v627);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v145);
  sub_22BE1A174();
  sub_22BE190A8(v146);
  v659 = sub_22BE5CE4C(&qword_27D912AB0, &qword_22C2B7D80);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v147);
  sub_22BE1A174();
  sub_22BE190A8(v148);
  v149 = sub_22BE5CE4C(&qword_27D912AB8, &qword_22C2B7D88);
  sub_22BE18910(v149, &v626);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v150);
  sub_22BE1A174();
  sub_22BE190A8(v151);
  v152 = sub_22BE5CE4C(&qword_27D912AC0, &qword_22C2B7D90);
  sub_22BE18910(v152, &v625);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v153);
  sub_22BE1A174();
  sub_22BE190A8(v154);
  v155 = sub_22BE5CE4C(&qword_27D912AC8, &qword_22C2B7D98);
  sub_22BE18910(v155, &v624);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v156);
  sub_22BE1A174();
  sub_22BE190A8(v157);
  v158 = sub_22BE5CE4C(&qword_27D912AD0, &qword_22C2B7DA0);
  sub_22BE18910(v158, &v623);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v159);
  sub_22BE1A174();
  sub_22BE190A8(v160);
  v161 = sub_22BE5CE4C(&qword_27D912AD8, &qword_22C2B7DA8);
  sub_22BE18910(v161, &v622);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v162);
  sub_22BE1A174();
  sub_22BE190A8(v163);
  v164 = sub_22BE5CE4C(&qword_27D912AE0, &qword_22C2B7DB0);
  sub_22BE18910(v164, &v621);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v165);
  sub_22BE1A174();
  sub_22BE190A8(v166);
  v167 = sub_22BE5CE4C(&qword_27D912AE8, &qword_22C2B7DB8);
  sub_22BE18910(v167, &v620);
  v658 = v168;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v169);
  sub_22BE1A174();
  sub_22BE190A8(v170);
  v171 = sub_22BE5CE4C(&qword_27D912AF0, &qword_22C2B7DC0);
  sub_22BE18910(v171, &v619);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v172);
  sub_22BE1A174();
  sub_22BE190A8(v173);
  v174 = sub_22BE5CE4C(&qword_27D912AF8, &qword_22C2B7DC8);
  sub_22BE18910(v174, v618);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v175);
  sub_22BE1A174();
  sub_22BE190A8(v176);
  v177 = sub_22BE5CE4C(&qword_27D912B00, &qword_22C2B7DD0);
  sub_22BE18910(v177, v617);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v178);
  sub_22BE1A174();
  sub_22BE190A8(v179);
  v180 = sub_22BE5CE4C(&qword_27D912B08, &qword_22C2B7DD8);
  sub_22BE18910(v180, v616);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v181);
  sub_22BE1A174();
  sub_22BE190A8(v182);
  v666 = sub_22BE5CE4C(&qword_27D912B10, &qword_22C2B7DE0);
  sub_22BE179D8();
  v662 = v183;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v184);
  sub_22BE1A174();
  v671 = v185;
  v186 = sub_22BE183BC();
  v664 = type metadata accessor for Session.Event.Payload(v186);
  sub_22BE18000();
  MEMORY[0x28223BE20](v187);
  sub_22BE17B98();
  v663 = v188;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v189);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v190);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v191);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v192);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v193);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v194);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v195);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v196);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v197);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v198);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v199);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v200);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v201);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v202);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v203);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v204);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v205);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v206);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v207);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v208);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v209);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v210);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v211);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v212);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v213);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v214);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v215);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v216);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v217);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v218);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v219);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v220);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v221);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v222);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v223);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v224);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v225);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v226);
  sub_22BE18094();
  MEMORY[0x28223BE20](v227);
  sub_22BE23858();
  MEMORY[0x28223BE20](v228);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v229);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v230);
  sub_22BE2EDB8();
  v667 = v23;
  sub_22BE25318(v23);
  sub_22BE32B90();
  v231 = v668;
  sub_22C274214();
  if (!v231)
  {
    v609 = v20;
    v232 = v664;
    sub_22C273ED4();
    v233 = sub_22BE7C5C4();
    if (v235 == v234 >> 1)
    {
      v668 = v233;
      v236 = v232;
    }

    else
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v243 == v244)
      {
        __break(1u);
        return;
      }

      v608 = *(v242 + v241);
      sub_22BEC0558(v237, v238, v239, v240, v241);
      v245 = sub_22BE7C5C0();
      v247 = v246;
      v249 = v248;
      swift_unknownObjectRelease();
      v668 = v245;
      v236 = v232;
      if (v247 == v249 >> 1)
      {
        v250 = v658;
        v251 = v659;
        switch(v608)
        {
          case 1:
            LOBYTE(v669[0]) = 1;
            sub_22C173A20();
            sub_22C18E018(&type metadata for Session.Event.Payload.UserTurnStartedCodingKeys, v669);
            type metadata accessor for UserTurnStarted(0);
            sub_22C18ED9C();
            sub_22BE20458(v351);
            sub_22BE28C80();
            sub_22C18EB68();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v513 = sub_22BE3A530();
            v514(v513);
            sub_22BE363F8();
            v515(v671, v666);
            goto LABEL_56;
          case 2:
            LOBYTE(v669[0]) = 2;
            sub_22C173978();
            sub_22C18E018(&type metadata for Session.Event.Payload.SpeechPartialResultCodingKeys, v669);
            sub_22C173E64();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v493 = sub_22BE40C84();
            v494(v493);
            v495 = sub_22BE287C0();
            v496(v495);
            sub_22BE48898(*&v669[0]);
            *(v250 + 8) = *(v669 + 8);
            sub_22BE1B62C();
            goto LABEL_56;
          case 3:
            LOBYTE(v669[0]) = 3;
            sub_22C173924();
            sub_22BE23940(&type metadata for Session.Event.Payload.RequestCodingKeys, v669);
            type metadata accessor for Request(0);
            sub_22C18E0B8();
            sub_22BE20458(v339);
            v340 = sub_22BE1C1A4();
            sub_22BE23A44(v340, v341, v342, v343, v344);
            swift_unknownObjectRelease();
            v501 = sub_22BE361AC();
            v502(v501);
            v503 = sub_22C18DFD8();
            v504(v503);
            sub_22BE3AF28();
            goto LABEL_56;
          case 4:
            LOBYTE(v669[0]) = 4;
            sub_22C17387C();
            sub_22BE23940(&type metadata for Session.Event.Payload.PlanCreatedCodingKeys, v669);
            sub_22C173E10();
            sub_22BE385D8();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            (*(v250 + 8))(v251);
            v473 = sub_22BE1B328();
            v474(v473);
            v475 = v669[1];
            *v609 = v669[0];
            v609[1] = v475;
            v609[2] = v670[0];
            *(v609 + 41) = *(v670 + 9);
            sub_22BE1B62C();
            goto LABEL_56;
          case 5:
            LOBYTE(v669[0]) = 5;
            sub_22C173828();
            sub_22C18E018(&type metadata for Session.Event.Payload.ActionCreatedCodingKeys, v669);
            v364 = type metadata accessor for Action(0);
            sub_22BE415B0();
            sub_22BE20458(v365);
            sub_22BE28C80();
            sub_22BE40624(v364, v366, v615, v367, v368);
            swift_unknownObjectRelease();
            v534 = sub_22BE40C84();
            v535(v534);
            v536 = sub_22BE287C0();
            v537(v536);
            goto LABEL_56;
          case 6:
            LOBYTE(v669[0]) = 6;
            sub_22C1737D4();
            sub_22BE23940(&type metadata for Session.Event.Payload.ActionCanceledCodingKeys, v669);
            type metadata accessor for ActionCancellation(0);
            sub_22C18ED00();
            sub_22BE20458(v373);
            v374 = sub_22BE1C1A4();
            sub_22BE23A44(v374, v375, v376, v377, v378);
            swift_unknownObjectRelease();
            v542 = sub_22BE361AC();
            v543(v542);
            v544 = sub_22C18DFD8();
            v545(v544);
            sub_22BE3AF28();
            goto LABEL_56;
          case 7:
            LOBYTE(v669[0]) = 7;
            sub_22C173780();
            sub_22BE23940(&type metadata for Session.Event.Payload.ClientActionCreatedCodingKeys, v669);
            type metadata accessor for ClientAction(0);
            sub_22BE3CE44();
            sub_22BE20458(v345);
            v346 = sub_22BE1C1A4();
            sub_22BE23A44(v346, v347, v348, v349, v350);
            swift_unknownObjectRelease();
            v505 = sub_22BE361AC();
            v506(v505);
            v507 = sub_22C18DFD8();
            v508(v507);
            sub_22BE3AF28();
            goto LABEL_56;
          case 8:
            LOBYTE(v669[0]) = 8;
            sub_22C17372C();
            sub_22BE23940(&type metadata for Session.Event.Payload.QueriesCreatedCodingKeys, v669);
            type metadata accessor for QueryStep(0);
            sub_22C18ECB8();
            sub_22BE20458(v385);
            v386 = sub_22BE1C1A4();
            sub_22BE23A44(v386, v387, v388, v389, v390);
            swift_unknownObjectRelease();
            v554 = sub_22BE361AC();
            v555(v554);
            v556 = sub_22C18DFD8();
            v557(v556);
            sub_22BE3AF28();
            goto LABEL_56;
          case 9:
            LOBYTE(v669[0]) = 9;
            sub_22C1736D8();
            sub_22BE23940(&type metadata for Session.Event.Payload.VariablesSetCodingKeys, v669);
            type metadata accessor for VariableStep(0);
            sub_22BE3B2E4();
            sub_22BE20458(v315);
            v316 = sub_22BE1C1A4();
            sub_22BE23A44(v316, v317, v318, v319, v320);
            swift_unknownObjectRelease();
            v481 = sub_22BE361AC();
            v482(v481);
            v483 = sub_22C18DFD8();
            v484(v483);
            sub_22BE3AF28();
            goto LABEL_56;
          case 10:
            LOBYTE(v669[0]) = 10;
            sub_22C173684();
            sub_22BE23940(&type metadata for Session.Event.Payload.RecoverableErrorCodingKeys, v669);
            type metadata accessor for Session.RecoverableError(0);
            sub_22C18ECD0();
            sub_22BE20458(v379);
            v380 = sub_22BE1C1A4();
            sub_22BE23A44(v380, v381, v382, v383, v384);
            swift_unknownObjectRelease();
            v550 = sub_22BE361AC();
            v551(v550);
            v552 = sub_22C18DFD8();
            v553(v552);
            sub_22BE3AF28();
            goto LABEL_56;
          case 11:
            LOBYTE(v669[0]) = 11;
            sub_22C173630();
            sub_22BE351B8();
            sub_22C18E1B4(v308, v309);
            type metadata accessor for SessionError(0);
            sub_22C18EE5C();
            sub_22BE20458(v310);
            sub_22BE1C1A4();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v469 = sub_22BE3A530();
            v470(v469, v251);
            v471 = sub_22C18DFD8();
            v472(v471);
            sub_22BE3AF28();
            goto LABEL_56;
          case 12:
            LOBYTE(v669[0]) = 12;
            sub_22C1735DC();
            sub_22BE3C6E0();
            sub_22BE3788C();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            v311 = sub_22BE194B4();
            v312(v311);
            v313 = sub_22BE4073C();
            v314(v313);
            sub_22BE1B73C();
            goto LABEL_40;
          case 13:
            LOBYTE(v669[0]) = 13;
            sub_22BE46594();
            sub_22C18E018(&type metadata for Session.Event.Payload.TerminateCodingKeys, v669);
            swift_unknownObjectRelease();
            v369 = sub_22BE392D4();
            v370(v369);
            v371 = sub_22BE4073C();
            v372(v371);
            sub_22BE1B73C();
LABEL_40:
            swift_storeEnumTagMultiPayload();
            goto LABEL_57;
          case 14:
            LOBYTE(v669[0]) = 14;
            sub_22C173588();
            sub_22BE23940(&type metadata for Session.Event.Payload.QueriesExecutedCodingKeys, v669);
            type metadata accessor for QueryStepResults(0);
            sub_22BE3C260();
            sub_22BE20458(v302);
            v303 = sub_22BE1C1A4();
            sub_22BE23A44(v303, v304, v305, v306, v307);
            swift_unknownObjectRelease();
            v461 = sub_22BE361AC();
            v462(v461);
            v463 = sub_22C18DFD8();
            v464(v463);
            sub_22BE3AF28();
            goto LABEL_56;
          case 15:
            LOBYTE(v669[0]) = 15;
            sub_22C173534();
            sub_22BE23940(&type metadata for Session.Event.Payload.ActionResolverRequestCreatedCodingKeys, v669);
            type metadata accessor for ActionResolverRequest(0);
            sub_22C18ED24();
            sub_22BE20458(v333);
            v334 = sub_22BE1C1A4();
            sub_22BE23A44(v334, v335, v336, v337, v338);
            swift_unknownObjectRelease();
            v497 = sub_22BE361AC();
            v498(v497);
            v499 = sub_22C18DFD8();
            v500(v499);
            sub_22BE3AF28();
            goto LABEL_56;
          case 16:
            LOBYTE(v669[0]) = 16;
            sub_22C17348C();
            sub_22C18E018(&type metadata for Session.Event.Payload.ResponseGenerationRequestCreatedCodingKeys, v669);
            sub_22C173DBC();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v457 = sub_22BE40C84();
            v458(v457);
            v459 = sub_22BE287C0();
            v460(v459);
            sub_22BE48898(*&v669[0]);
            sub_22BE1B62C();
            goto LABEL_56;
          case 17:
            LOBYTE(v669[0]) = 17;
            sub_22C1733E4();
            sub_22C18E018(&type metadata for Session.Event.Payload.SafetyModeReleaseCodingKeys, v669);
            sub_22C173D68();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v520 = sub_22BE40C84();
            v521(v520);
            v522 = sub_22BE287C0();
            v523(v522);
            sub_22BE1B62C();
            goto LABEL_56;
          case 18:
            LOBYTE(v669[0]) = 18;
            sub_22C17333C();
            sub_22C18E018(&type metadata for Session.Event.Payload.SafetyModeExceptionCodingKeys, v669);
            sub_22C173D14();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v546 = sub_22BE40C84();
            v547(v546);
            v548 = sub_22BE287C0();
            v549(v548);
            *v610 = v669[0];
            sub_22BE1B62C();
            goto LABEL_56;
          case 19:
            LOBYTE(v669[0]) = 19;
            sub_22C173294();
            sub_22C18E018(&type metadata for Session.Event.Payload.ContextRetrievedCodingKeys, v669);
            sub_22C173CC0();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v574 = sub_22BE40C84();
            v575(v574);
            v576 = sub_22BE287C0();
            v577(v576);
            *v611 = v669[0];
            sub_22BE1B62C();
            goto LABEL_56;
          case 20:
            LOBYTE(v669[0]) = 20;
            sub_22C1731EC();
            sub_22C18E018(&type metadata for Session.Event.Payload.ToolsRetrievedCodingKeys, v669);
            sub_22C173C6C();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v528 = sub_22BE40C84();
            v529(v528);
            v530 = sub_22BE287C0();
            v531(v530);
            v532 = v669[1];
            v533 = v670[0];
            *v612 = v669[0];
            *(v612 + 16) = v532;
            *(v612 + 32) = v533;
            *(v612 + 40) = *(v670 + 8);
            sub_22BE1B62C();
            goto LABEL_56;
          case 21:
            LOBYTE(v669[0]) = 21;
            sub_22C173144();
            sub_22C18E018(&type metadata for Session.Event.Payload.EntitySpanMatchedCodingKeys, v669);
            sub_22C173C18();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v538 = sub_22BE40C84();
            v539(v538);
            v540 = sub_22BE287C0();
            v541(v540);
            sub_22BE48898(*&v669[0]);
            sub_22BE1B62C();
            goto LABEL_56;
          case 22:
            LOBYTE(v669[0]) = 22;
            sub_22C1730F0();
            sub_22BE23940(&type metadata for Session.Event.Payload.SystemResponseGeneratedCodingKeys, v669);
            sub_22C26F754();
            sub_22C18ED84();
            sub_22BE20458(v403);
            v404 = sub_22BE1C1A4();
            sub_22BE23A44(v404, v405, v406, v407, v408);
            swift_unknownObjectRelease();
            v566 = sub_22BE361AC();
            v567(v566);
            v568 = sub_22C18DFD8();
            v569(v568);
            sub_22BE3AF28();
            goto LABEL_56;
          case 23:
            LOBYTE(v669[0]) = 23;
            sub_22C17309C();
            sub_22BE23940(&type metadata for Session.Event.Payload.StatementEvaluatedCodingKeys, v669);
            type metadata accessor for StatementResult(0);
            sub_22C18ED54();
            sub_22BE20458(v415);
            v416 = sub_22BE1C1A4();
            sub_22BE23A44(v416, v417, v418, v419, v420);
            swift_unknownObjectRelease();
            v582 = sub_22BE361AC();
            v583(v582);
            v584 = sub_22C18DFD8();
            v585(v584);
            sub_22BE3AF28();
            goto LABEL_56;
          case 24:
            LOBYTE(v669[0]) = 24;
            sub_22BE45BD4();
            sub_22BE23940(&type metadata for Session.Event.Payload.ExternalAgentRequestCodingKeys, v669);
            type metadata accessor for ExternalAgentRequest(0);
            sub_22C18EC70();
            sub_22BE20458(v327);
            v328 = sub_22BE1C1A4();
            sub_22BE23A44(v328, v329, v330, v331, v332);
            swift_unknownObjectRelease();
            v489 = sub_22BE361AC();
            v490(v489);
            v491 = sub_22C18DFD8();
            v492(v491);
            sub_22BE3AF28();
            goto LABEL_56;
          case 25:
            LOBYTE(v669[0]) = 25;
            sub_22BE48A9C();
            sub_22BE23940(&type metadata for Session.Event.Payload.ExternalAgentOutcomeCodingKeys, v669);
            type metadata accessor for ExternalAgentOutcome(0);
            sub_22C18EC28();
            sub_22BE20458(v321);
            v322 = sub_22BE1C1A4();
            sub_22BE23A44(v322, v323, v324, v325, v326);
            swift_unknownObjectRelease();
            v485 = sub_22BE361AC();
            v486(v485);
            v487 = sub_22C18DFD8();
            v488(v487);
            sub_22BE3AF28();
            goto LABEL_56;
          case 26:
            LOBYTE(v669[0]) = 26;
            sub_22C173048();
            sub_22C18E018(&type metadata for Session.Event.Payload.ExternalAgentRequestRewriteMetadataCodingKeys, v669);
            sub_22C173BC4();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v599 = sub_22BE40C84();
            v600(v599);
            v601 = sub_22BE287C0();
            v602(v601);
            sub_22BE48898(*&v669[0]);
            *(v250 + 8) = *(v669 + 8);
            sub_22BE1B62C();
            goto LABEL_56;
          case 27:
            LOBYTE(v669[0]) = 27;
            sub_22C172FF4();
            sub_22BE23940(&type metadata for Session.Event.Payload.ToolResolutionCodingKeys, v669);
            type metadata accessor for ToolResolution(0);
            sub_22C18EDE4();
            sub_22BE20458(v290);
            v291 = sub_22BE1C1A4();
            sub_22BE23A44(v291, v292, v293, v294, v295);
            swift_unknownObjectRelease();
            v449 = sub_22BE361AC();
            v450(v449);
            v451 = sub_22C18DFD8();
            v452(v451);
            sub_22BE3AF28();
            goto LABEL_56;
          case 28:
            LOBYTE(v669[0]) = 28;
            sub_22C172FA0();
            sub_22BE23940(&type metadata for Session.Event.Payload.UndoRedoRequestCodingKeys, v669);
            type metadata accessor for UndoRedoRequest(0);
            sub_22C18EBE0();
            sub_22BE20458(v421);
            v422 = sub_22BE1C1A4();
            sub_22BE23A44(v422, v423, v424, v425, v426);
            swift_unknownObjectRelease();
            v586 = sub_22BE361AC();
            v587(v586);
            v588 = sub_22C18DFD8();
            v589(v588);
            sub_22BE3AF28();
            goto LABEL_56;
          case 29:
            LOBYTE(v669[0]) = 29;
            sub_22C172F4C();
            sub_22BE23940(&type metadata for Session.Event.Payload.ClientUndoRedoRequestCodingKeys, v669);
            type metadata accessor for ClientUndoRedoRequest(0);
            sub_22C18EEBC();
            sub_22BE20458(v427);
            v428 = sub_22BE1C1A4();
            sub_22BE23A44(v428, v429, v430, v431, v432);
            swift_unknownObjectRelease();
            v590 = sub_22BE361AC();
            v591(v590);
            v592 = sub_22C18DFD8();
            v593(v592);
            sub_22BE3AF28();
            goto LABEL_56;
          case 30:
            LOBYTE(v669[0]) = 30;
            sub_22C172EF8();
            sub_22BE23940(&type metadata for Session.Event.Payload.TypeConversionRequestCodingKeys, v669);
            type metadata accessor for TypeConversionRequest(0);
            sub_22C18EC10();
            sub_22BE20458(v391);
            v392 = sub_22BE1C1A4();
            sub_22BE23A44(v392, v393, v394, v395, v396);
            swift_unknownObjectRelease();
            v558 = sub_22BE361AC();
            v559(v558);
            v560 = sub_22C18DFD8();
            v561(v560);
            sub_22BE3AF28();
            goto LABEL_56;
          case 31:
            LOBYTE(v669[0]) = 31;
            sub_22C172EA4();
            sub_22BE23940(&type metadata for Session.Event.Payload.TypeConversionResultCodingKeys, v669);
            type metadata accessor for TypeConversionResult(0);
            sub_22C18EBF8();
            sub_22BE20458(v352);
            v353 = sub_22BE1C1A4();
            sub_22BE23A44(v353, v354, v355, v356, v357);
            swift_unknownObjectRelease();
            v516 = sub_22BE361AC();
            v517(v516);
            v518 = sub_22C18DFD8();
            v519(v518);
            sub_22BE3AF28();
            goto LABEL_56;
          case 32:
            LOBYTE(v669[0]) = 32;
            sub_22C172E50();
            sub_22BE23940(&type metadata for Session.Event.Payload.QueryDecorationResultCodingKeys, v669);
            type metadata accessor for QueryDecorationResult(0);
            sub_22C18ECA0();
            sub_22BE20458(v397);
            v398 = sub_22BE1C1A4();
            sub_22BE23A44(v398, v399, v400, v401, v402);
            swift_unknownObjectRelease();
            v562 = sub_22BE361AC();
            v563(v562);
            v564 = sub_22C18DFD8();
            v565(v564);
            sub_22BE3AF28();
            goto LABEL_56;
          case 33:
            LOBYTE(v669[0]) = 33;
            sub_22C172DA8();
            sub_22C18E018(&type metadata for Session.Event.Payload.ContinuePlanningCodingKeys, v669);
            sub_22C173B70();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v465 = sub_22BE40C84();
            v466(v465);
            v467 = sub_22BE287C0();
            v468(v467);
            sub_22BE1B62C();
            goto LABEL_56;
          case 34:
            LOBYTE(v669[0]) = 34;
            sub_22C172D54();
            sub_22BE23940(&type metadata for Session.Event.Payload.QueryDecorationPrePlannerResultCodingKeys, v669);
            type metadata accessor for QueryDecorationPrePlannerResult(0);
            sub_22C18EC88();
            sub_22BE20458(v296);
            v297 = sub_22BE1C1A4();
            sub_22BE23A44(v297, v298, v299, v300, v301);
            swift_unknownObjectRelease();
            v453 = sub_22BE361AC();
            v454(v453);
            v455 = sub_22C18DFD8();
            v456(v455);
            sub_22BE3AF28();
            goto LABEL_56;
          case 35:
            LOBYTE(v669[0]) = 35;
            sub_22C172D00();
            sub_22BE23940(&type metadata for Session.Event.Payload.SkipStatementCodingKeys, v669);
            type metadata accessor for SkipStatement(0);
            sub_22C18EE74();
            sub_22BE20458(v278);
            v279 = sub_22BE1C1A4();
            sub_22BE23A44(v279, v280, v281, v282, v283);
            swift_unknownObjectRelease();
            v441 = sub_22BE361AC();
            v442(v441);
            v443 = sub_22C18DFD8();
            v444(v443);
            sub_22BE3AF28();
            goto LABEL_56;
          case 36:
            LOBYTE(v669[0]) = 36;
            sub_22C172CAC();
            sub_22BE23940(&type metadata for Session.Event.Payload.ExecutionPreconditionEvaluatorRequestCodingKeys, v669);
            type metadata accessor for ExecutionPreconditionEvaluatorRequest(0);
            sub_22C18EEA4();
            sub_22BE20458(v284);
            v285 = sub_22BE1C1A4();
            sub_22BE23A44(v285, v286, v287, v288, v289);
            swift_unknownObjectRelease();
            v445 = sub_22BE361AC();
            v446(v445);
            v447 = sub_22C18DFD8();
            v448(v447);
            sub_22BE3AF28();
            goto LABEL_56;
          case 37:
            LOBYTE(v669[0]) = 37;
            sub_22C172C58();
            sub_22BE23940(&type metadata for Session.Event.Payload.RequestAmendmentCodingKeys, v669);
            type metadata accessor for RequestAmendment(0);
            sub_22BE31148();
            sub_22BE20458(v272);
            v273 = sub_22BE1C1A4();
            sub_22BE23A44(v273, v274, v275, v276, v277);
            swift_unknownObjectRelease();
            v437 = sub_22BE361AC();
            v438(v437);
            v439 = sub_22C18DFD8();
            v440(v439);
            sub_22BE3AF28();
            goto LABEL_56;
          case 38:
            LOBYTE(v669[0]) = 38;
            sub_22C172BB0();
            sub_22C18E018(&type metadata for Session.Event.Payload.ToolRetrievalRequestCodingKeys, v669);
            sub_22C173B1C();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v594 = sub_22BE40C84();
            v595(v594);
            v596 = sub_22BE287C0();
            v597(v596);
            v598 = *(&v669[0] + 1);
            *v613 = *&v669[0];
            v613[1] = v598;
            sub_22BE1B62C();
            goto LABEL_56;
          case 39:
            LOBYTE(v669[0]) = 39;
            sub_22C172B08();
            sub_22C18E018(&type metadata for Session.Event.Payload.ContextRetrievalRequestCodingKeys, v669);
            sub_22C173AC8();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v570 = sub_22BE40C84();
            v571(v570);
            v572 = sub_22BE287C0();
            v573(v572);
            sub_22BE1B62C();
            goto LABEL_56;
          case 40:
            LOBYTE(v669[0]) = 40;
            sub_22C172A60();
            sub_22C18E018(&type metadata for Session.Event.Payload.SpanMatchRequestCodingKeys, v669);
            sub_22C173A74();
            sub_22BE36090();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v476 = sub_22BE40C84();
            v477(v476);
            v478 = sub_22BE287C0();
            v479(v478);
            v480 = *(&v669[0] + 1);
            *v614 = *&v669[0];
            v614[1] = v480;
            sub_22BE1B62C();
            goto LABEL_56;
          case 41:
            LOBYTE(v669[0]) = 41;
            sub_22C172A0C();
            sub_22BE23940(&type metadata for Session.Event.Payload.IntermediateSystemResponseCodingKeys, v669);
            sub_22C270074();
            sub_22C18EC58();
            sub_22BE20458(v358);
            v359 = sub_22BE1C1A4();
            sub_22BE23A44(v359, v360, v361, v362, v363);
            swift_unknownObjectRelease();
            v524 = sub_22BE361AC();
            v525(v524);
            v526 = sub_22C18DFD8();
            v527(v526);
            sub_22BE3AF28();
            goto LABEL_56;
          case 42:
            LOBYTE(v669[0]) = 42;
            sub_22C1729B8();
            sub_22BE23940(&type metadata for Session.Event.Payload.IntermediateSystemResponseRenderedCodingKeys, v669);
            sub_22C270234();
            sub_22C18EDFC();
            sub_22BE20458(v409);
            v410 = sub_22BE1C1A4();
            sub_22BE23A44(v410, v411, v412, v413, v414);
            swift_unknownObjectRelease();
            v578 = sub_22BE361AC();
            v579(v578);
            v580 = sub_22C18DFD8();
            v581(v580);
            sub_22BE3AF28();
            goto LABEL_56;
          case 43:
            LOBYTE(v669[0]) = 43;
            sub_22C172964();
            sub_22C18E1B4(&type metadata for Session.Event.Payload.AgentPrimitiveActionCodingKeys, v669);
            v266 = type metadata accessor for AgentPrimitiveAction(0);
            sub_22BE3CCA4();
            v268 = sub_22BE20458(v267);
            sub_22BE23A44(v266, v269, v270, v271, v268);
            swift_unknownObjectRelease();
            v433 = sub_22BE361AC();
            v434(v433);
            v435 = sub_22C18DFD8();
            v436(v435);
            sub_22BE3AF28();
            goto LABEL_56;
          default:
            LOBYTE(v669[0]) = 0;
            sub_22BE32DD8();
            sub_22BE23940(&type metadata for Session.Event.Payload.SessionStartCodingKeys, v669);
            type metadata accessor for SessionStart(0);
            sub_22C18EED4();
            sub_22BE20458(v252);
            v253 = sub_22BE1C1A4();
            sub_22BE23A44(v253, v254, v255, v256, v257);
            swift_unknownObjectRelease();
            v509 = sub_22BE361AC();
            v510(v509);
            v511 = sub_22C18DFD8();
            v512(v511);
            sub_22BE3AF28();
LABEL_56:
            swift_storeEnumTagMultiPayload();
            sub_22BE1A054();
            sub_22BE22944();
            sub_22C171FA8(v603, v604);
LABEL_57:
            v605 = v667;
            sub_22BE1A054();
            v606 = sub_22BE27A44();
            sub_22C171FA8(v606, v607);
            v265 = v605;
            break;
        }

        goto LABEL_11;
      }
    }

    v258 = sub_22C273B34();
    sub_22BE196B4(v258, MEMORY[0x277D841A0]);
    v260 = v259;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v260 = v236;
    sub_22C273DF4();
    sub_22BE1A918();
    sub_22BE18994();
    v261 = sub_22BE38608();
    v262(v261);
    swift_willThrow();
    swift_unknownObjectRelease();
    v263 = sub_22BE1B73C();
    v264(v263);
  }

  v265 = v667;
LABEL_11:
  sub_22BE26B64(v265);
  sub_22C18F0A4();
  sub_22BE18478();
}

void static Session.Event.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v4 = sub_22C26E1D4();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE18DFC();
  v8 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE234F4();
  v10 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  sub_22BE1B5EC();
  if ((sub_22C26E1B4() & 1) == 0)
  {
    goto LABEL_50;
  }

  v12 = type metadata accessor for Session.Event(0);
  sub_22C18F344(*(v12 + 20));
  if ((sub_22C26E1B4() & 1) == 0)
  {
    goto LABEL_50;
  }

  v52 = v12;
  v13 = *(v10 + 48);
  sub_22C18F844();
  sub_22C18F844();
  sub_22BE181B0(v3);
  if (!v14)
  {
    sub_22BE1B18C();
    sub_22BE22814();
    sub_22BE181B0(v3 + v13);
    if (!v14)
    {
      sub_22C18F458();
      v17(v2, v3 + v13, v4);
      sub_22BE18B28();
      sub_22BE20458(v18);
      sub_22BE33560();
      v19 = sub_22C272FD4();
      v20 = *(v6 + 8);
      v21 = sub_22BE431C0();
      v20(v21);
      v22 = sub_22BE35838();
      v20(v22);
      sub_22C18DC5C(v3, &qword_27D9082F0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_13;
    }

    v15 = sub_22C18E894();
    v16(v15, v4);
LABEL_11:
    sub_22C18DC5C(v3, &qword_27D90A8E8);
    goto LABEL_50;
  }

  sub_22BE181B0(v3 + v13);
  if (!v14)
  {
    goto LABEL_11;
  }

  sub_22C18DC5C(v3, &qword_27D9082F0);
LABEL_13:
  sub_22C18F344(v52[7]);
  static Session.Event.Payload.== infix(_:_:)();
  if ((v23 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_22C18E1A0();
  v26 = v14 && v24 == v25;
  if (!v26 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_22C18E1A0();
  v29 = v14 && v27 == v28;
  if (!v29 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_22C18E1A0();
  v32 = v14 && v30 == v31;
  if (!v32 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_22C18E728();
  if (v35)
  {
    if (!v33)
    {
      goto LABEL_50;
    }

    sub_22BE3A508(v34);
    v38 = v14 && v36 == v37;
    if (!v38 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v33)
  {
    goto LABEL_50;
  }

  v39 = sub_22C18F344(v52[12]);
  if (static Timepoint.== infix(_:_:)(v39, v40))
  {
    sub_22C18E728();
    if (v43)
    {
      if (!v41)
      {
        goto LABEL_50;
      }

      sub_22BE3A508(v42);
      v46 = v14 && v44 == v45;
      if (!v46 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_48:
      v47 = v52[14];
      v48 = *(v1 + v47 + 8);
      v49 = *(v0 + v47 + 8);
      if (v48)
      {
        if (!v49)
        {
          goto LABEL_50;
        }
      }

      else
      {
        sub_22BE35DEC();
        if (v51)
        {
          goto LABEL_50;
        }
      }

      sub_22BEA3324();
      goto LABEL_51;
    }

    if (!v41)
    {
      goto LABEL_48;
    }
  }

LABEL_50:
  v50 = 0;
LABEL_51:
  sub_22BE1C1DC(v50);
  sub_22BE1AABC();
}

uint64_t sub_22C132CE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6576457972657571 && a2 == 0xEC0000006449746ELL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x800000022C2DAEA0 == a2;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7247746E65696C63 && a2 == 0xED0000644970756FLL;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E696F70656D6974 && a2 == 0xE900000000000074;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x53676E6974736F70 && a2 == 0xEB000000006E6170;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6574616974696E69 && a2 == 0xEE00736E61705364)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_22C274014();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C1330B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C132CE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1330D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C1330A8();
  *a1 = result;
  return result;
}

uint64_t sub_22C133100(uint64_t a1)
{
  v2 = sub_22BE271CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13313C(uint64_t a1)
{
  v2 = sub_22BE271CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Event.init(from:)()
{
  sub_22BE19130();
  v6 = v5;
  v48 = v7;
  type metadata accessor for Timepoint(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v49 = v9;
  v10 = sub_22BE183BC();
  type metadata accessor for Session.Event.Payload(v10);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE1955C();
  v12 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1B01C();
  v14 = sub_22C26E1D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v16);
  sub_22BE25A90();
  sub_22BE5CE4C(&qword_27D912C58, &qword_22C2B7DF8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE25CD0();
  type metadata accessor for Session.Event(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  v52 = v19[6];
  v53 = v19;
  v51 = v21 - v20;
  sub_22BE1A140();
  sub_22BE19DC4(v22, v23, v24, v14);
  v25 = sub_22C18FE2C();
  sub_22BE3C0A8(v25);
  sub_22BE271CC();
  sub_22BEC046C();
  sub_22BE2BC6C();
  sub_22C274214();
  if (v0)
  {
    sub_22C18F1A4();
    sub_22BE26B64(v50);
    sub_22C18DC5C(v51 + v52, &qword_27D9082F0);
    if (v3)
    {
      sub_22C18F2B8(v53[8]);

      if (!v2)
      {
LABEL_9:
        if (!v6)
        {
LABEL_11:

          goto LABEL_12;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else if (!v2)
    {
      goto LABEL_9;
    }

    sub_22C18F2B8(v53[9]);

    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v47 = v4;
  sub_22BE18B28();
  sub_22BE20458(v26);
  sub_22C18F744();
  sub_22C273EB4();
  v27 = sub_22BE260B8();
  v29 = v28;
  (v28)(v27);
  sub_22C18FD18();
  sub_22C18F744();
  sub_22C273EB4();
  v29(v51 + v53[5], v1, v14);
  sub_22C18F744();
  sub_22C273E44();
  sub_22BE2343C();
  sub_22C18EB50();
  sub_22BE20458(v30);
  sub_22C18E618();
  sub_22C273EB4();
  sub_22BE1A054();
  sub_22C171FA8(v47, v51 + v31);
  sub_22C18E81C(4);
  v32 = sub_22C273E64();
  sub_22BE37C38(v32, v33, v53[8]);
  sub_22C18E81C(5);
  v34 = sub_22C273E64();
  sub_22BE37C38(v34, v35, v53[9]);
  sub_22C18E81C(6);
  v36 = sub_22C273E64();
  sub_22BE37C38(v36, v37, v53[10]);
  sub_22C18E81C(7);
  v38 = sub_22C273E04();
  sub_22BE37C38(v38, v39, v53[11]);
  LOBYTE(v54) = 8;
  sub_22BE48880();
  sub_22BE20458(v40);
  sub_22C18E618();
  sub_22C273EB4();
  sub_22BE38554();
  sub_22C171FA8(v49, v41);
  sub_22C11BDCC();
  sub_22C18F9D0();
  sub_22C273E44();
  v42 = (v51 + v53[13]);
  *v42 = v54;
  v42[1] = v55;
  sub_22C11BE20();
  sub_22C18F9D0();
  sub_22C273E44();
  v43 = v51 + v53[14];
  *v43 = v54;
  *(v43 + 8) = v55;
  sub_22BE5CE4C(&qword_27D912C50, &qword_22C2B7DF0);
  sub_22BE32284(&unk_27D912C68, sub_22C11BDCC, sub_22C11BE20, MEMORY[0x277D83528]);
  sub_22C18F9D0();
  sub_22C273EB4();
  v44 = sub_22C18F1B4();
  v45(v44);
  *(v51 + v53[15]) = v54;
  v46 = sub_22BE19EBC();
  sub_22BE1A964(v46, v48);
  sub_22BE26B64(v50);
  sub_22BE26148();
  sub_22C171FFC();
LABEL_12:
  sub_22BE18478();
}

void Session.Plan.init(prompt:promptResponse:statements:overrideId:source:program:)()
{
  sub_22BE19460();
  v9 = v8;
  sub_22C18F2A8();
  sub_22BE3F3E4();

  v10 = *v9;
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v0;
  *(v7 + 56) = v10;
  sub_22BE1AABC();
}

uint64_t sub_22C133B1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000022C2DB2F0 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265764F6E616C70 && a2 == 0xEC00000065646972;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E616C506C6C7566 && a2 == 0xEB0000000072656ELL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000020 && 0x800000022C2DB320 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x800000022C2DB350 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_22C133CD0(char a1)
{
  result = 0x7265764F6E616C70;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E616C506C6C7566;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_22C133D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C133B1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C133DC0(uint64_t a1)
{
  v2 = sub_22C173EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C133DFC(uint64_t a1)
{
  v2 = sub_22C173EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C133E38(uint64_t a1)
{
  v2 = sub_22C173FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C133E74(uint64_t a1)
{
  v2 = sub_22C173FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C133EB0(uint64_t a1)
{
  v2 = sub_22C174008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C133EEC(uint64_t a1)
{
  v2 = sub_22C174008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C133F28(uint64_t a1)
{
  v2 = sub_22C17405C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C133F64(uint64_t a1)
{
  v2 = sub_22C17405C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C133FA0(uint64_t a1)
{
  v2 = sub_22C173F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C133FDC(uint64_t a1)
{
  v2 = sub_22C173F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C134018(uint64_t a1)
{
  v2 = sub_22C173F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C134054(uint64_t a1)
{
  v2 = sub_22C173F60();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Plan.Source.encode(to:)()
{
  sub_22BE19130();
  sub_22BE3FF70();
  sub_22BE5CE4C(&qword_27D912C70, &qword_22C2B7E00);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE20168(v2, v18);
  sub_22BE5CE4C(&qword_27D912C78, &qword_22C2B7E08);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE181D0(v4, v19);
  sub_22BE5CE4C(&qword_27D912C80, &qword_22C2B7E10);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE2BA30(v6, v20);
  sub_22BE5CE4C(&qword_27D912C88, &qword_22C2B7E18);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22C18E344(v8);
  sub_22BE5CE4C(&qword_27D912C90, &qword_22C2B7E20);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE2C64C();
  sub_22BE5CE4C(&qword_27D912C98, &qword_22C2B7E28);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  v11 = *v0;
  v12 = sub_22BE3C968();
  sub_22BE26950(v12, v13);
  sub_22C173EB8();
  sub_22BEE939C();
  sub_22C274234();
  switch(v11)
  {
    case 1:
      sub_22C174008();
      sub_22BE36090();
      sub_22C273EE4();
      goto LABEL_7;
    case 2:
      sub_22BE200EC();
      sub_22C173FB4();
      sub_22BE36090();
      sub_22C273EE4();
      goto LABEL_7;
    case 3:
      sub_22C173F60();
      sub_22BE3925C();
      sub_22BE36090();
      sub_22C273EE4();
      goto LABEL_7;
    case 4:
      sub_22C173F0C();
      sub_22BE36090();
      sub_22C273EE4();
LABEL_7:
      v14 = sub_22BE2399C();
      break;
    default:
      sub_22C17405C();
      sub_22BE36090();
      sub_22C273EE4();
      v14 = sub_22C11FDE0();
      break;
  }

  v15(v14);
  v16 = sub_22BE38FD8();
  v17(v16);
  sub_22C18FEDC();
  sub_22BE18478();
}

void Session.Plan.Source.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BE19130();
  a25 = v28;
  a26 = v29;
  sub_22C18F4C8();
  v67 = v30;
  sub_22BE5CE4C(&qword_27D912CD0, &qword_22C2B7E30);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D912CD8, &qword_22C2B7E38);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1A174();
  sub_22BE3BF90(v33);
  sub_22BE5CE4C(&qword_27D912CE0, &qword_22C2B7E40);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE3C048(v35, v65);
  sub_22BE5CE4C(&qword_27D912CE8, &qword_22C2B7E48);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A8B4();
  sub_22BE5CE4C(&qword_27D912CF0, &qword_22C2B7E50);
  sub_22BE1A3D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E64();
  sub_22BE5CE4C(&qword_27D912CF8, &qword_22C2B7E58);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1B72C();
  sub_22BE25318(v27);
  sub_22C173EB8();
  sub_22C274214();
  if (!v68)
  {
    sub_22C273ED4();
    sub_22BE7C5C4();
    sub_22C18F638();
    if (!v39)
    {
      sub_22BE32C78();
      if (v40 == v41)
      {
        __break(1u);
        return;
      }

      v66 = *(v47 + v46);
      sub_22BE3A464(v42, v43, v44, v45, v46);
      sub_22BE7C5C0();
      v49 = v48;
      v51 = v50;
      swift_unknownObjectRelease();
      if (v49 == v51 >> 1)
      {
        switch(v66)
        {
          case 1:
            a13 = 1;
            sub_22C174008();
            sub_22C18E870(&type metadata for Session.Plan.Source.PlanOverrideCodingKeys, &a13);
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 2:
            sub_22BE200EC();
            sub_22C173FB4();
            sub_22C18E870(&type metadata for Session.Plan.Source.FullPlannerCodingKeys, &a14);
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 3:
            a15 = 3;
            sub_22C173F60();
            sub_22C18E870(&type metadata for Session.Plan.Source.SuggestedInvocationPlanGeneratorCodingKeys, &a15);
            swift_unknownObjectRelease();
LABEL_17:
            v52 = sub_22BE1B5F8();
            break;
          case 4:
            a16 = 4;
            sub_22C173F0C();
            sub_22C18F228();
            sub_22C273DE4();
            swift_unknownObjectRelease();
            v52 = sub_22BEC0304();
            break;
          default:
            a12 = 0;
            sub_22C17405C();
            sub_22C18E870(&type metadata for Session.Plan.Source.PrescribedPlanGeneratorCodingKeys, &a12);
            swift_unknownObjectRelease();
            v52 = sub_22BE1B5F8();
            v54 = v26;
            break;
        }

        v53(v52, v54);
        v63 = sub_22BE1B73C();
        v64(v63);
        *v67 = v66;
        sub_22BE26B64(v27);
        goto LABEL_12;
      }
    }

    v55 = sub_22C273B34();
    sub_22BE196B4(v55, MEMORY[0x277D841A0]);
    v57 = v56;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v57 = &type metadata for Session.Plan.Source;
    sub_22C273DF4();
    sub_22C18FE8C();
    sub_22BE1B198(v58);
    sub_22BE18994();
    v59 = sub_22BE38608();
    v60(v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = sub_22BE1B73C();
    v62(v61);
  }

  sub_22BE26B64(v27);
LABEL_12:
  sub_22BE467E4();
  sub_22BE18478();
}

unint64_t Session.Plan.description.getter()
{
  v1 = *(v0 + 32);
  sub_22C273AA4();

  sub_22BE25A74();
  v2 = type metadata accessor for ProgramStatement(0);
  v3 = MEMORY[0x2318ABBB0](v1, v2);
  MEMORY[0x2318AB8D0](v3);

  sub_22C18FAC4();
  v4 = sub_22BE33FD8();
  MEMORY[0x2318AB8D0](v4);
  sub_22C18FD70();
  sub_22C18FAC4();
  v5 = sub_22C273074();
  MEMORY[0x2318AB8D0](v5);

  return 0xD000000000000011;
}

uint64_t sub_22C134C14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x655274706D6F7270 && a2 == 0xEE0065736E6F7073;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656D6574617473 && a2 == 0xEA00000000007374;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656469727265766FLL && a2 == 0xEA00000000006449;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_22C134DC0(char a1)
{
  result = 0x74706D6F7270;
  switch(a1)
  {
    case 1:
      result = 0x655274706D6F7270;
      break;
    case 2:
      result = 0x6E656D6574617473;
      break;
    case 3:
      result = 0x656469727265766FLL;
      break;
    case 4:
      result = 0x656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C134E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C134C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C134E98(uint64_t a1)
{
  v2 = sub_22C1740B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C134ED4(uint64_t a1)
{
  v2 = sub_22C1740B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Plan.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_22BE19130();
  v21 = v20;
  sub_22BE5CE4C(&qword_27D912D00, &qword_22C2B7E60);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE19E64();
  sub_22BE3C0A8(v21);
  sub_22C1740B0();
  sub_22BE23550();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22C18E9AC();
  sub_22BE3AF28();
  sub_22C273F54();
  if (!v19)
  {
    sub_22C18E4E0();
    sub_22C18E514();
    sub_22C273F54();
    sub_22BE200EC();
    sub_22BE5CE4C(&qword_27D912D10, &qword_22C2B7E68);
    sub_22C174104();
    sub_22C18F608();
    sub_22C18E118();
    sub_22C273FA4();
    sub_22C18E900();
    sub_22C18E514();
    sub_22C273EF4();
    sub_22C1741B8();
    sub_22BE39020();
    sub_22C273FA4();
  }

  v23 = sub_22C18E748();
  v24(v23);
  sub_22BE35D48();
  sub_22BE18478();
}

void Session.Plan.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  sub_22C18F140();
  v27 = v26;
  sub_22BE5CE4C(&qword_27D912D30, &qword_22C2B7E70);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE23E58();
  sub_22C18E560(v24);
  sub_22C1740B0();
  sub_22BE3CCD4();
  sub_22C18FF90();
  sub_22C274214();
  if (v25)
  {
    sub_22BE26B64(v24);
  }

  else
  {
    sub_22BE45D74();
    v29 = sub_22C273E64();
    v42 = v30;
    LOBYTE(v46[0]) = 1;
    sub_22BE45D74();
    v31 = sub_22C273E64();
    v41 = v32;
    v39 = v31;
    sub_22BE5CE4C(&qword_27D912D10, &qword_22C2B7E68);
    sub_22C17420C();
    sub_22C18E7D8();
    sub_22C273EB4();
    v38 = v46[0];
    LOBYTE(v46[0]) = 3;
    sub_22BE45D74();
    v37 = sub_22C273E04();
    v40 = v33;
    sub_22C1742C0();
    sub_22C18F0BC();
    sub_22C273EB4();
    v34 = sub_22C18E22C();
    v35(v34);
    *&v43 = v29;
    *(&v43 + 1) = v42;
    *&v44 = v39;
    *(&v44 + 1) = v41;
    *&v45[0] = v38;
    *(&v45[0] + 1) = v37;
    *&v45[1] = v40;
    BYTE8(v45[1]) = a14;
    v36 = v44;
    *v27 = v43;
    v27[1] = v36;
    v27[2] = v45[0];
    *(v27 + 41) = *(v45 + 9);
    sub_22C174314(&v43, v46);
    sub_22BE26B64(v24);
    v46[0] = v29;
    v46[1] = v42;
    v46[2] = v39;
    v46[3] = v41;
    v46[4] = v38;
    v46[5] = v37;
    v46[6] = v40;
    v47 = a14;
    sub_22C10D970(v46);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t Session.RecoverableError.error.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for Session.PlanGenerationModelOutputError(v2);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  sub_22BE2379C();
  v5 = type metadata accessor for Session.RecoverableError(0);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE18DFC();
  sub_22C18EAE4();
  v7 = sub_22BE324FC();
  sub_22BE1A964(v7, v8);
  v9 = sub_22BE29370();
  sub_22C171FA8(v9, v1);
  v10 = *(v4 + 32);
  sub_22C26E5D4();
  sub_22BE1834C();
  (*(v11 + 16))(v0, v1 + v10);
  sub_22C18E39C();
  return sub_22C171FFC();
}

BOOL static Session.PlanGenerationError.== infix(_:_:)(uint64_t a1)
{
  v3 = sub_22BE5CE4C(&qword_27D912D50, &qword_22C2B7E78);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B72C();
  v6 = (v1 + *(v5 + 56));
  sub_22BE1A964(a1, v1);
  v7 = sub_22BE1804C();
  sub_22BE1A964(v7, v8);
  v9 = *v1 == *v6 && v1[1] == v6[1];
  v11 = 0;
  if (v9 || (sub_22C274014() & 1) != 0)
  {
    v10 = v1[2] == v6[2] && v1[3] == v6[3];
    if (v10 || (sub_22C274014() & 1) != 0)
    {
      type metadata accessor for Session.PlanGenerationModelOutputError(0);
      if (sub_22C26E5C4())
      {
        v11 = 1;
      }
    }
  }

  sub_22C171FFC();
  sub_22BE260B8();
  sub_22C171FFC();
  return v11;
}

uint64_t sub_22C135698(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000022C2D9CF0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C135738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C135698(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C135764(uint64_t a1)
{
  v2 = sub_22C17436C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1357A0(uint64_t a1)
{
  v2 = sub_22C17436C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1357DC(uint64_t a1)
{
  v2 = sub_22C1743C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C135818(uint64_t a1)
{
  v2 = sub_22C1743C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.RecoverableError.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F804();
  sub_22BE5CE4C(&qword_27D912D58, &qword_22C2B7E80);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  v2 = type metadata accessor for Session.RecoverableError(0);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE1955C();
  sub_22BE5CE4C(&qword_27D912D60, &qword_22C2B7E88);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE23E58();
  sub_22BE41E84(v0);
  sub_22C17436C();
  sub_22BE3CCD4();
  sub_22BE40618();
  sub_22C274234();
  sub_22C18EAE4();
  v5 = sub_22C18F9B8();
  sub_22BE1A964(v5, v6);
  sub_22C1743C0();
  sub_22BE42748();
  sub_22C273EE4();
  type metadata accessor for Session.PlanGenerationError(0);
  sub_22C18EFD0();
  sub_22BE20458(v7);
  sub_22BE35E54();
  sub_22C18E69C();
  sub_22C273FA4();
  sub_22BE291DC();
  sub_22C171FFC();
  v8 = sub_22BE1B328();
  v9(v8);
  v10 = sub_22BE1824C();
  v11(v10);
  sub_22BEE94B0();
  sub_22BE18478();
}

void Session.RecoverableError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = sub_22C18E850(v12);
  type metadata accessor for Session.RecoverableError(v13);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  sub_22BE5CE4C(&qword_27D912D80, &qword_22C2B7E90);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B01C();
  v16 = sub_22BE5CE4C(&qword_27D912D88, &qword_22C2B7E98);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE234F4();
  sub_22BE3C0A8(v10);
  sub_22C17436C();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (a10)
  {
    goto LABEL_12;
  }

  sub_22C18F100();
  sub_22BE7C5C4();
  sub_22C18F644();
  if (!v18)
  {
    sub_22BE41798();
    if (v19 == v20)
    {
      __break(1u);
      return;
    }

    sub_22BE3D6C4(v21);
    sub_22BE7C5C0();
    sub_22C18F14C();
    sub_22C18FFE4();
    if (v18)
    {
      sub_22C1743C0();
      sub_22BE25CA0();
      sub_22C273DE4();
      if (v11)
      {
        v22 = sub_22BE1A194();
        v23(v22, v16);
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for Session.PlanGenerationError(0);
        sub_22C18EFD0();
        v31 = sub_22BE20458(v30);
        sub_22BE377D8(v31, v32);
        sub_22C18F218();
        swift_unknownObjectRelease();
        v33 = sub_22C18E144();
        v34(v33);
        v35 = sub_22BE391A4();
        v36(v35);
        sub_22BE3C4F4();
        v37 = sub_22C18F964();
        sub_22C171FA8(v37, v38);
      }

      goto LABEL_12;
    }

    sub_22C18FEFC();
  }

  v24 = sub_22C273B34();
  sub_22BE196B4(v24, MEMORY[0x277D841A0]);
  sub_22C18FA9C();
  sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
  v25 = sub_22C18E674();
  sub_22BE1B198(v25);
  sub_22BE1BC24();
  v26 = sub_22C18F298();
  v27(v26);
  swift_willThrow();
  swift_unknownObjectRelease();
  v28 = sub_22C18E3C8();
  v29(v28);
LABEL_12:
  sub_22BE26B64(v10);
  sub_22C18F0A4();
  sub_22BE18478();
}

uint64_t static Session.PlanGenerationModelOutputError.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
  sub_22C18EA3C(*(v7 + 24));

  return sub_22C26E5C4();
}

uint64_t sub_22C135E5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022C2D9CD0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C135EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C135E5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C135F28(uint64_t a1)
{
  v2 = sub_22C174414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C135F64(uint64_t a1)
{
  v2 = sub_22C174414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C135FA0(uint64_t a1)
{
  v2 = sub_22C174468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C135FDC(uint64_t a1)
{
  v2 = sub_22C174468();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.PlanGenerationError.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F804();
  sub_22BE5CE4C(&qword_27D912D98, &qword_22C2B7EA0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  v2 = type metadata accessor for Session.PlanGenerationError(0);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE1955C();
  sub_22BE5CE4C(&qword_27D912DA0, &qword_22C2B7EA8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE23E58();
  sub_22BE41E84(v0);
  sub_22C174414();
  sub_22BE3CCD4();
  sub_22BE40618();
  sub_22C274234();
  v5 = sub_22C18F9B8();
  sub_22BE1A964(v5, v6);
  sub_22C174468();
  sub_22BE42748();
  sub_22C273EE4();
  type metadata accessor for Session.PlanGenerationModelOutputError(0);
  sub_22C18EF88();
  sub_22BE20458(v7);
  sub_22BE35E54();
  sub_22C18E69C();
  sub_22C273FA4();
  sub_22C18E39C();
  sub_22C171FFC();
  v8 = sub_22BE1B328();
  v9(v8);
  v10 = sub_22BE1824C();
  v11(v10);
  sub_22BEE94B0();
  sub_22BE18478();
}

void Session.PlanGenerationError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = sub_22C18E850(v12);
  type metadata accessor for Session.PlanGenerationError(v13);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE17CBC();
  sub_22BE5CE4C(&qword_27D912DC0, &qword_22C2B7EB0);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B01C();
  v16 = sub_22BE5CE4C(&qword_27D912DC8, &qword_22C2B7EB8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE234F4();
  sub_22BE3C0A8(v10);
  sub_22C174414();
  sub_22BE48270();
  sub_22BE2BC6C();
  sub_22C274214();
  if (a10)
  {
    goto LABEL_12;
  }

  sub_22C18F100();
  sub_22BE7C5C4();
  sub_22C18F644();
  if (!v18)
  {
    sub_22BE41798();
    if (v19 == v20)
    {
      __break(1u);
      return;
    }

    sub_22BE3D6C4(v21);
    sub_22BE7C5C0();
    sub_22C18F14C();
    sub_22C18FFE4();
    if (v18)
    {
      sub_22C174468();
      sub_22BE25CA0();
      sub_22C273DE4();
      if (v11)
      {
        v22 = sub_22BE1A194();
        v23(v22, v16);
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for Session.PlanGenerationModelOutputError(0);
        sub_22C18EF88();
        v31 = sub_22BE20458(v30);
        sub_22BE377D8(v31, v32);
        sub_22C18F218();
        swift_unknownObjectRelease();
        v33 = sub_22C18E144();
        v34(v33);
        v35 = sub_22BE391A4();
        v36(v35);
        v37 = sub_22C1088E8();
        sub_22C171FA8(v37, v38);
      }

      goto LABEL_12;
    }

    sub_22C18FEFC();
  }

  v24 = sub_22C273B34();
  sub_22BE196B4(v24, MEMORY[0x277D841A0]);
  sub_22C18FA9C();
  sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
  v25 = sub_22C18E674();
  sub_22BE1B198(v25);
  sub_22BE1BC24();
  v26 = sub_22C18F298();
  v27(v26);
  swift_willThrow();
  swift_unknownObjectRelease();
  v28 = sub_22C18E3C8();
  v29(v28);
LABEL_12:
  sub_22BE26B64(v10);
  sub_22C18F0A4();
  sub_22BE18478();
}

void Session.PlanGenerationModelOutputError.prompt.setter()
{
  sub_22BE1A8A8();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t Session.PlanGenerationModelOutputError.error.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.PlanGenerationModelOutputError(v0);
  return sub_22BE18504();
}

uint64_t Session.PlanGenerationModelOutputError.init(rawModelOutput:prompt:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  type metadata accessor for Session.PlanGenerationModelOutputError(0);
  sub_22C26E5D4();
  sub_22BE1834C();
  v5 = sub_22BE33684();

  return v6(v5);
}

uint64_t sub_22C136750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F4D776172 && a2 == 0xEE0074757074754FLL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C136860(char a1)
{
  if (!a1)
  {
    return 0x6C65646F4D776172;
  }

  if (a1 == 1)
  {
    return 0x74706D6F7270;
  }

  return 0x726F727265;
}

uint64_t sub_22C1368C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C136750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1368EC(uint64_t a1)
{
  v2 = sub_22C1744BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C136928(uint64_t a1)
{
  v2 = sub_22C1744BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.PlanGenerationModelOutputError.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D912DD8, &qword_22C2B7EC0);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE25CD0();
  sub_22BE23094();
  v2 = sub_22C1744BC();
  sub_22BE33B8C(&type metadata for Session.PlanGenerationModelOutputError.CodingKeys, v3, v2);
  sub_22C18E9AC();
  sub_22BE26108();
  sub_22C273F54();
  if (!v0)
  {
    sub_22C18E4E0();
    sub_22BE26108();
    sub_22C273F54();
    type metadata accessor for Session.PlanGenerationModelOutputError(0);
    sub_22BE200EC();
    sub_22C26E5D4();
    sub_22C18EF4C();
    sub_22BE20458(v4);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v5 = sub_22BE37508();
  v6(v5);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void Session.PlanGenerationModelOutputError.init(from:)()
{
  sub_22BE19130();
  sub_22C18F710();
  v18 = v5;
  v19 = sub_22C26E5D4();
  sub_22BE179D8();
  v17 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BE294E0();
  sub_22BE5CE4C(&qword_27D912DE8, &qword_22C2B7EC8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE24FD8();
  type metadata accessor for Session.PlanGenerationModelOutputError(v9);
  sub_22BE29F40();
  MEMORY[0x28223BE20](v10);
  sub_22BE28FD8();
  sub_22C18E560(v2);
  sub_22C1744BC();
  sub_22BE3CCD4();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22C18EA24();
    sub_22C18F0BC();
    *v4 = sub_22C273E64();
    v4[1] = v11;
    sub_22BE2315C();
    sub_22C18F0BC();
    v4[2] = sub_22C273E64();
    v4[3] = v12;
    sub_22BE200EC();
    sub_22C18EF4C();
    sub_22BE20458(v13);
    sub_22C18F614();
    sub_22C273EB4();
    v14 = sub_22C18EA60();
    v15(v14);
    (*(v17 + 32))(v4 + *(v0 + 24), v3, v19);
    v16 = sub_22BE29370();
    sub_22BE1A964(v16, v18);
    sub_22BE26B64(v2);
    sub_22C18E39C();
    sub_22C171FFC();
  }

  sub_22BE19650();
  sub_22BE18478();
}

double static SaltedLoggingIDScope.session(_:)()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for Session.Event(v0);
  sub_22C18F6BC();
  if (v1)
  {
  }

  else
  {
    sub_22C26E184();
  }

  sub_22BE1804C();
  sub_22C26FDA4();

  return result;
}

{
  v0 = sub_22BE1A5E4();
  type metadata accessor for Session.Transcript(v0);
  sub_22C18F6BC();
  if (v1)
  {
  }

  else
  {
    sub_22C26E184();
  }

  sub_22BE1804C();
  sub_22C26FDA4();

  return result;
}

uint64_t SessionStart.originatingDevice.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for SessionStart(v0);
  return sub_22BE18504();
}

uint64_t SessionStart.genderSettings.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for SessionStart(v0);
  return sub_22BE18504();
}

void SessionStart.init(initialLocaleSettings:originatingDevice:shouldExecuteEventsWithUnfinishedActions:)()
{
  sub_22BE3C358();
  v2 = v1;
  v3 = sub_22C0E9824();
  v4 = type metadata accessor for SessionStart(v3);
  sub_22C18FA90();
  sub_22C26EA84();
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  v9 = *(v4 + 24);
  v10 = sub_22C26EC34();
  sub_22C0E966C(v0 + v9, v11, v12, v10);
  sub_22C26ECA4();
  sub_22BE1834C();
  v13 = sub_22BE1A8C4();
  v14(v13);
  sub_22BE2343C();
  *(v0 + *(v4 + 28)) = v2;
  sub_22BE267B8();
}

uint64_t sub_22C1370B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000022C2DA9A0 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000022C2DA9C0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65537265646E6567 && a2 == 0xEE0073676E697474;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000028 && 0x800000022C2DBE00 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22C13721C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1370B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C137244(uint64_t a1)
{
  v2 = sub_22BE362C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C137280(uint64_t a1)
{
  v2 = sub_22BE362C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SessionStart.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_22BE19130();
  v26 = v25;
  v54 = v27;
  v28 = sub_22BE5CE4C(&qword_27D911C20, &qword_22C2B5060);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE2C638(v30, v54);
  v31 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
  sub_22BE19448(v31);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE34034(v33, v55);
  v59 = sub_22C26ECA4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  sub_22BE3FF7C(v35);
  v60 = sub_22BE5CE4C(&qword_27D912E00, &qword_22C2B7EE0);
  sub_22BE179D8();
  v58 = v36;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE234F4();
  v38 = type metadata accessor for SessionStart(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v39);
  sub_22BE28FD8();
  sub_22C18F32C();
  v40 = sub_22C26EA84();
  v61 = v21;
  sub_22BE1A140();
  sub_22BE19DC4(v41, v42, v43, v40);
  v44 = *(v38 + 24);
  v45 = sub_22C26EC34();
  sub_22BE1A140();
  sub_22BE19DC4(v46, v47, v48, v45);
  sub_22BE25318(v26);
  sub_22BE362C4();
  sub_22BE48270();
  sub_22C274214();
  if (v22)
  {
    sub_22BE26B64(v26);
    sub_22C18DC5C(v24 + v61, &qword_27D911F60);
    sub_22C18DC5C(v24 + v44, &qword_27D911C20);
  }

  else
  {
    sub_22BE43270();
    sub_22BE20458(v49);
    sub_22BEE92A4();
    sub_22C18E618();
    sub_22C273EB4();
    sub_22BE27C14();
    v50(v24, v57, v59);
    sub_22BE33FE4();
    sub_22BE41F14();
    sub_22BE20458(v51);
    sub_22C18E9A0();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22BE200EC();
    sub_22C18E214();
    sub_22BE20458(v52);
    sub_22C18F614();
    sub_22C273E44();
    sub_22BE2343C();
    sub_22C18E900();
    v53 = sub_22C273E74();
    (*(v58 + 8))(v23, v60);
    *(v24 + *(v38 + 28)) = v53 & 1;
    sub_22BE1A964(v24, v56);
    sub_22BE26B64(v26);
    sub_22BE23F00();
    sub_22C171FFC();
  }

  sub_22C18F0A4();
  sub_22BE18478();
}

void UserTurnStarted.turn.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for UserTurnStarted(v0);
  sub_22C18F688(*(v1 + 20));
}

uint64_t sub_22C1377F0()
{
  v0 = sub_22BE2BB48();
  v1(v0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t sub_22C13784C()
{
  v0 = sub_22BE1C364();
  v1(v0);
  sub_22C18E974();
  return sub_22BE22814();
}

uint64_t static UserTurn.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_22C1378B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1852994932 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64496E727574 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x800000022C2D5D40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22C137A10(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 1852994932;
      break;
    case 2:
      result = 0x64496E727574;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C137A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1378B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C137AC4(uint64_t a1)
{
  v2 = sub_22C174510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C137B00(uint64_t a1)
{
  v2 = sub_22C174510();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserTurnStarted.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D912E18, &qword_22C2B7EE8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  sub_22BE23094();
  v3 = sub_22C174510();
  sub_22BE25524(&type metadata for UserTurnStarted.CodingKeys, v4, v3);
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v5);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v6 = type metadata accessor for UserTurnStarted(0);
    sub_22C18E70C(v6);
    sub_22C174564();
    sub_22BE26258();
    sub_22C18E17C();
    sub_22C273FA4();
    sub_22C18F320(*(v1 + 24));
    sub_22C18EAFC();
    sub_22BE36628();
    sub_22C273F54();
    sub_22BE3418C();
    sub_22C271394();
    sub_22BE3D20C();
    sub_22BE20458(v7);
    sub_22C18FDD8();
    sub_22BE196CC();
    sub_22C273F34();
  }

  v8 = sub_22BE37A10();
  v9(v8);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void UserTurnStarted.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_22BE19130();
  sub_22C18F4C8();
  v39 = v23;
  v24 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v24);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE3100C();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v26);
  sub_22BE294E0();
  sub_22BE5CE4C(&qword_27D912E38, &qword_22C2B7EF0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE25CD0();
  v28 = type metadata accessor for UserTurnStarted(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v29);
  sub_22BE197B8();
  sub_22BE25318(v22);
  sub_22C174510();
  sub_22BEC046C();
  sub_22C274214();
  if (v40)
  {
    sub_22BE26B64(v22);
  }

  else
  {
    sub_22BE18F44();
    sub_22BE20458(v30);
    sub_22BEE92A4();
    sub_22BE261D0();
    sub_22C273EB4();
    sub_22C18EB74();
    v31 = sub_22BE1A6BC();
    v32(v31);
    sub_22BE38948();
    sub_22C1745B8();
    sub_22C18FA0C();
    sub_22BE261D0();
    sub_22C273EB4();
    *(v21 + *(v28 + 20)) = BYTE2(a11);
    sub_22C18EAFC();
    v33 = sub_22C273E64();
    sub_22BE37C38(v33, v34, *(v28 + 24));
    sub_22C271394();
    sub_22BE3418C();
    sub_22BE3D20C();
    sub_22BE20458(v35);
    sub_22C18E69C();
    sub_22C273E44();
    v36 = sub_22BE1B5F8();
    v37(v36);
    sub_22BE424BC();
    v38 = sub_22BE19EBC();
    sub_22BE1A964(v38, v39);
    sub_22BE26B64(v22);
    sub_22BE4875C();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t sub_22C138104(uint64_t a1)
{
  v2 = sub_22C17460C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C138140(uint64_t a1)
{
  v2 = sub_22C17460C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1381E4(uint64_t a1)
{
  v2 = sub_22C174660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C138220(uint64_t a1)
{
  v2 = sub_22C174660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1382A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C138364(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x686365657073;
  }
}

uint64_t sub_22C1383B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1382A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C1383D8(uint64_t a1)
{
  v2 = sub_22C1746B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C138414(uint64_t a1)
{
  v2 = sub_22C1746B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C138450(uint64_t a1)
{
  v2 = sub_22C1747B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C13848C(uint64_t a1)
{
  v2 = sub_22C1747B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C1384C8(uint64_t a1)
{
  v2 = sub_22C174708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C138504(uint64_t a1)
{
  v2 = sub_22C174708();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserTurn.encode(to:)()
{
  sub_22BE19130();
  sub_22C18F4C8();
  sub_22BE5CE4C(&qword_27D912E70, &qword_22C2B7F08);
  sub_22BE179D8();
  v16 = v2;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE20168(v4, v14);
  sub_22BE5CE4C(&qword_27D912E78, &qword_22C2B7F10);
  sub_22BE179D8();
  v15 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE23E58();
  sub_22BE5CE4C(&qword_27D912E80, &qword_22C2B7F18);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B01C();
  v8 = *v0;
  sub_22C18E560(v1);
  sub_22C1746B4();
  sub_22BE232E4();
  sub_22C274234();
  if (v8)
  {
    sub_22BE486C4();
    sub_22C174708();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C17475C();
    v9 = v16;
    sub_22C273FA4();
    v10 = sub_22BEC0304();
  }

  else
  {
    sub_22C1747B0();
    sub_22BE27168();
    sub_22C273EE4();
    sub_22C174804();
    v9 = v15;
    sub_22C273FA4();
    v10 = sub_22BE3408C();
  }

  v11(v10, v9);
  v12 = sub_22BE25C08();
  v13(v12);
  sub_22BE22978();
  sub_22BE18478();
}

void UserTurn.init(from:)()
{
  sub_22BE19130();
  v36 = v1;
  v3 = v2;
  v35 = sub_22BE5CE4C(&qword_27D912EB0, &qword_22C2B7F20);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B01C();
  sub_22BE5CE4C(&qword_27D912EB8, &qword_22C2B7F28);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  v6 = sub_22BE5CE4C(&qword_27D912EC0, &qword_22C2B7F30);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  v8 = sub_22BE392D4();
  sub_22BE26950(v8, v9);
  sub_22C1746B4();
  sub_22BEC046C();
  sub_22C274214();
  if (!v0)
  {
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v11 != v10 >> 1)
    {
      sub_22BE38A18();
      sub_22BE3E9D8();
      if (v18 == v19)
      {
        __break(1u);
        return;
      }

      v20 = *(v17 + v16);
      sub_22BEC0558(v12, v13, v14, v15, v16);
      sub_22BE7C5C0();
      sub_22C18FFD8();
      v22 = v21;
      swift_unknownObjectRelease();
      if (!(v22 >> 1))
      {
        if (v20)
        {
          sub_22BE486C4();
          sub_22C174708();
          sub_22BE261D0();
          sub_22C273DE4();
          sub_22C174858();
          sub_22BE3788C();
          sub_22BE36514();
          sub_22C273EB4();
          sub_22C18F4B0();
          swift_unknownObjectRelease();
          v30 = sub_22BE3408C();
          v32 = v35;
        }

        else
        {
          sub_22C1747B0();
          sub_22BE261D0();
          sub_22C273DE4();
          sub_22C1748AC();
          sub_22BE42748();
          sub_22C273EB4();
          sub_22C18F4B0();
          swift_unknownObjectRelease();
          v30 = sub_22BE2B7E8();
        }

        v31(v30, v32);
        v33 = sub_22BE38A68();
        v34(v33);
        *v36 = v20;
        sub_22BE26B64(v3);
        goto LABEL_10;
      }
    }

    v23 = sub_22C273B34();
    sub_22BE196B4(v23, MEMORY[0x277D841A0]);
    v25 = v24;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v25 = &type metadata for UserTurn;
    v26 = sub_22C273DF4();
    sub_22BE1B198(v26);
    sub_22BE1BC24();
    (*(v27 + 104))(v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = sub_22C18E418();
    v29(v28, v6);
  }

  sub_22BE26B64(v3);
LABEL_10:
  sub_22BE19650();
  sub_22BE18478();
}

void SpeechPartialResult.description.getter()
{
  sub_22BE19460();
  v4 = sub_22BE5CE4C(&qword_27D912ED8, &qword_22C2B7F38);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v6);
  sub_22BE26800();
  sub_22C26EB64();
  sub_22BE1BF18();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE17CBC();
  v10 = *(v1 + 16);
  v11 = *(v10 + 16);
  switch(v11)
  {
    case 2:
      sub_22C18F0C8();
      MEMORY[0x2318AB8D0](8285, 0xE200000000000000);
      if (*(v10 + 16))
      {
        sub_22BE19E14();
        v16 = sub_22BE2590C();
        v37 = v17;
        v17(v16);
        sub_22C26EB34();
        v18 = sub_22BE1AB74();
        v36 = v19;
        v19(v18);
        v20 = sub_22BE1B18C();
        MEMORY[0x2318AB8D0](v20);

        MEMORY[0x2318AB8D0](32, 0xE100000000000000);
        if (*(v10 + 16) >= 2uLL)
        {
          v21 = sub_22BE38608();
          v37(v21);
          sub_22C26EB34();
          v22 = sub_22BE1AB74();
          v36(v22);
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    case 1:
      sub_22C18F0C8();
      MEMORY[0x2318AB8D0](8285, 0xE200000000000000);
      if (*(v10 + 16))
      {
        sub_22BE19E14();
        v12 = sub_22BE38608();
        v13(v12);
        sub_22C26EB34();
        v14 = sub_22BE47E18();
        v15(v14);
LABEL_10:
        v23 = sub_22BE324FC();
        MEMORY[0x2318AB8D0](v23);
LABEL_14:

        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_17;
    case 0:
      sub_22C18F0C8();
      MEMORY[0x2318AB8D0](93, 0xE100000000000000);
LABEL_15:
      sub_22C18FCD4();
      sub_22BE1AABC();
      return;
  }

  sub_22C18F0C8();
  MEMORY[0x2318AB8D0](8285, 0xE200000000000000);
  sub_22BF2DA78(v10, v3);
  v24 = sub_22BE23E90();
  sub_22BE1AB5C(v24, v25, v0);
  if (v26)
  {
    goto LABEL_19;
  }

  v27 = sub_22C26EB34();
  v29 = v28;
  v30 = *(v8 + 8);
  v31 = sub_22BE291B0();
  v30(v31);
  MEMORY[0x2318AB8D0](v27, v29);

  MEMORY[0x2318AB8D0](0x202E2E2E20, 0xE500000000000000);
  sub_22BE956EC(v10, v2);
  v32 = sub_22BE26188();
  sub_22BE1AB5C(v32, v33, v0);
  if (!v26)
  {
    sub_22C26EB34();
    v34 = sub_22BE200D4();
    v30(v34);
    v35 = sub_22BE191CC();
    MEMORY[0x2318AB8D0](v35);
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}