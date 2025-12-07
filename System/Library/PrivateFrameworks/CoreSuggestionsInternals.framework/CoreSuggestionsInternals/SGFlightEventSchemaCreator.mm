@interface SGFlightEventSchemaCreator
- (BOOL)checkCompletenessOfSchema:(id)schema;
- (BOOL)reservationIDPresentInEventSchema:(id)schema;
- (id)processDURawEvent:(id)event;
@end

@implementation SGFlightEventSchemaCreator

- (BOOL)reservationIDPresentInEventSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"reservationId"];
  if (v3)
  {
    null = [MEMORY[0x277CBEB68] null];
    v5 = v3 != null;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)checkCompletenessOfSchema:(id)schema
{
  schemaCopy = schema;
  v4 = [schemaCopy objectForKeyedSubscript:@"reservationStatus"];
  v30 = [v4 isEqualToString:@"http://schema.org/ReservationCancelled"];
  v5 = [v4 isEqualToString:@"http://schema.org/ReservationConfirmed"];
  v6 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v7 = [v6 objectForKeyedSubscript:@"flightNumber"];

  v8 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v9 = [v8 objectForKeyedSubscript:@"departureTime"];

  v10 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v32 = [v10 objectForKeyedSubscript:@"arrivalTime"];

  v11 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v12 = [v11 objectForKeyedSubscript:@"departureAirport"];
  v13 = [v12 objectForKeyedSubscript:@"iataCode"];

  v14 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v15 = [v14 objectForKeyedSubscript:@"arrivalAirport"];
  v16 = [v15 objectForKeyedSubscript:@"iataCode"];

  v17 = [schemaCopy objectForKeyedSubscript:@"reservationId"];

  if (!v5)
  {
    v18 = v7;
    if (v17)
    {
      v26 = v30;
    }

    else
    {
      v26 = 0;
    }

    if (v26 == 1)
    {
      null = [MEMORY[0x277CBEB68] null];
      LOBYTE(v7) = 0;
      if (v17 == null || !v18)
      {
        goto LABEL_25;
      }

      null2 = [MEMORY[0x277CBEB68] null];
      LOBYTE(v7) = v18 != null2;
      goto LABEL_24;
    }

    LOBYTE(v7) = 0;
LABEL_27:
    v27 = v32;
    goto LABEL_28;
  }

  v18 = v7;
  if (!v7)
  {
    goto LABEL_27;
  }

  null = [MEMORY[0x277CBEB68] null];
  LOBYTE(v7) = 0;
  if (v18 == null || !v9)
  {
    goto LABEL_25;
  }

  null2 = [MEMORY[0x277CBEB68] null];
  LOBYTE(v7) = 0;
  if (v9 != null2 && v32)
  {
    null3 = [MEMORY[0x277CBEB68] null];
    LOBYTE(v7) = 0;
    if (v32 != null3 && v13)
    {
      v22 = null3;
      null4 = [MEMORY[0x277CBEB68] null];
      LOBYTE(v7) = 0;
      if (v13 != null4 && v16)
      {
        v31 = null4;
        null5 = [MEMORY[0x277CBEB68] null];
        LOBYTE(v7) = 0;
        if (v16 != null5 && v17)
        {
          v29 = null5;
          null6 = [MEMORY[0x277CBEB68] null];
          LOBYTE(v7) = v17 != null6;

          null5 = v29;
        }

        null4 = v31;
      }

      null3 = v22;
    }
  }

LABEL_24:

LABEL_25:
  v27 = v32;

LABEL_28:
  return v7;
}

- (id)processDURawEvent:(id)event
{
  v117[12] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06628]];
  v5 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D064B8]];
  v6 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066B8]];
  v7 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06620]];
  v97 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D067B0]];
  v8 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06560]];
  v96 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D064B0]];
  v95 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06448]];
  v94 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06558]];
  v93 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06550]];
  v92 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06570]];
  v91 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06568]];
  v90 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066C8]];
  v89 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06440]];
  v88 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06438]];
  v87 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06458]];
  v86 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06450]];
  v85 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06580]];
  v84 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06520]];
  v9 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06798]];
  v83 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06630]];
  v10 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065F8]];
  v74 = v10;
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    capitalizedString = [v11 capitalizedString];
    v82 = [v12 initWithFormat:@"http://schema.org/Reservation%@", capitalizedString];
  }

  else
  {
    v82 = 0;
  }

  v14 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06578]];
  v81 = v8;
  v15 = [SGEventSchemaCreator isTimePresentInDURawDateTime:v8];
  v16 = &unk_284749140;
  if (v15)
  {
    v16 = &unk_284749128;
  }

  v79 = v16;
  v116[0] = @"@context";
  v116[1] = @"@type";
  v117[0] = @"http://schema.org";
  v117[1] = @"http://schema.org/FlightReservation";
  v116[2] = @"reservationId";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v67 = null;
  v117[2] = null;
  v116[3] = @"reservationStatus";
  null2 = v82;
  if (!v82)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v66 = null2;
  v117[3] = null2;
  v116[4] = @"totalPrice";
  null3 = v9;
  v75 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v65 = null3;
  v117[4] = null3;
  v116[5] = @"underName";
  v115[0] = @"http://schema.org/Person";
  v114[0] = @"@type";
  v114[1] = @"name";
  null4 = v97;
  if (!v97)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v64 = null4;
  v115[1] = null4;
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:2];
  v117[5] = v73;
  v116[6] = @"reservationFor";
  v113[0] = @"http://schema.org/Flight";
  v112[0] = @"@type";
  v112[1] = @"flightDesignator";
  null5 = v4;
  if (!v4)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v80 = v14;
  v63 = null5;
  v113[1] = null5;
  v112[2] = @"flightNumber";
  null6 = v83;
  if (!v83)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v62 = null6;
  v113[2] = null6;
  v112[3] = @"airline";
  v111[0] = @"http://schema.org/Airline";
  v110[0] = @"@type";
  v110[1] = @"iataCode";
  null7 = v7;
  if (!v7)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v61 = null7;
  v111[1] = null7;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
  v113[3] = v72;
  v112[4] = @"departureTime";
  null8 = v8;
  if (!v8)
  {
    null8 = [MEMORY[0x277CBEB68] null];
  }

  v60 = null8;
  v113[4] = null8;
  v112[5] = @"departureTerminal";
  null9 = v92;
  if (!v92)
  {
    null9 = [MEMORY[0x277CBEB68] null];
  }

  v78 = v4;
  v59 = null9;
  v113[5] = null9;
  v112[6] = @"departureGate";
  null10 = v91;
  if (!v91)
  {
    null10 = [MEMORY[0x277CBEB68] null];
  }

  v58 = null10;
  v113[6] = null10;
  v112[7] = @"departureAirport";
  v109[0] = @"http://schema.org/Airport";
  v108[0] = @"@type";
  v108[1] = @"name";
  null11 = v94;
  if (!v94)
  {
    null11 = [MEMORY[0x277CBEB68] null];
  }

  v57 = null11;
  v109[1] = null11;
  v108[2] = @"iataCode";
  null12 = v93;
  if (!v93)
  {
    null12 = [MEMORY[0x277CBEB68] null];
  }

  v56 = null12;
  v109[2] = null12;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:3];
  v113[7] = v70;
  v112[8] = @"boardingTime";
  null13 = v96;
  if (!v96)
  {
    null13 = [MEMORY[0x277CBEB68] null];
  }

  v55 = null13;
  v113[8] = null13;
  v112[9] = @"arrivalTime";
  null14 = v95;
  if (!v95)
  {
    null14 = [MEMORY[0x277CBEB68] null];
  }

  v54 = null14;
  v113[9] = null14;
  v112[10] = @"arrivalTerminal";
  null15 = v87;
  if (!v87)
  {
    null15 = [MEMORY[0x277CBEB68] null];
  }

  v53 = null15;
  v113[10] = null15;
  v112[11] = @"arrivalGate";
  null16 = v86;
  if (!v86)
  {
    null16 = [MEMORY[0x277CBEB68] null];
  }

  v52 = null16;
  v113[11] = null16;
  v112[12] = @"arrivalAirport";
  v107[0] = @"http://schema.org/Airport";
  v106[0] = @"@type";
  v106[1] = @"name";
  null17 = v89;
  if (!v89)
  {
    null17 = [MEMORY[0x277CBEB68] null];
  }

  v51 = null17;
  v107[1] = null17;
  v106[2] = @"iataCode";
  null18 = v88;
  if (!v88)
  {
    null18 = [MEMORY[0x277CBEB68] null];
  }

  v50 = null18;
  v107[2] = null18;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:3];
  v113[12] = v69;
  v112[13] = @"duration";
  null19 = v85;
  if (!v85)
  {
    null19 = [MEMORY[0x277CBEB68] null];
  }

  v76 = v7;
  v77 = v6;
  v49 = null19;
  v113[13] = null19;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:14];
  v116[7] = @"reservedTicket";
  v105[0] = @"http://schema.org/Ticket";
  v104[0] = @"@type";
  v104[1] = @"ticketedSeat";
  v102[0] = @"@type";
  v102[1] = @"seatNumber";
  v103[0] = @"http://schema.org/Seat";
  null20 = v90;
  v68 = v36;
  v117[6] = v36;
  if (!v90)
  {
    null20 = [MEMORY[0x277CBEB68] null];
  }

  v48 = null20;
  v103[1] = null20;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
  v105[1] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  v117[7] = v39;
  v116[8] = @"broker";
  v100[1] = @"name";
  v101[0] = @"http://schema.org/Organization";
  v100[0] = @"@type";
  null21 = v5;
  v71 = v5;
  if (!v5)
  {
    null21 = [MEMORY[0x277CBEB68] null];
  }

  v101[1] = null21;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
  v117[8] = v41;
  v116[9] = @"potentialAction";
  v98[0] = @"@type";
  v98[1] = @"@context";
  v99[0] = @"CheckInAction";
  v99[1] = @"http://schema.org";
  null22 = v84;
  v98[2] = @"target";
  if (!v84)
  {
    null22 = [MEMORY[0x277CBEB68] null];
  }

  v99[2] = null22;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:3];
  v117[9] = v43;
  v116[10] = @"DetailedEventStatus";
  null23 = v14;
  if (!v14)
  {
    null23 = [MEMORY[0x277CBEB68] null];
  }

  v116[11] = @"startTimeIsUnknown";
  v117[10] = null23;
  v117[11] = v79;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:12];
  if (!v80)
  {
  }

  if (!v84)
  {
  }

  if (!v71)
  {
  }

  if (!v90)
  {
  }

  if (!v85)
  {
  }

  if (!v88)
  {
  }

  if (!v89)
  {
  }

  if (!v86)
  {
  }

  if (!v87)
  {
  }

  if (!v95)
  {
  }

  if (!v96)
  {
  }

  if (!v93)
  {
  }

  if (!v94)
  {
  }

  if (!v91)
  {
  }

  if (v92)
  {
    if (v81)
    {
      goto LABEL_82;
    }
  }

  else
  {

    if (v81)
    {
      goto LABEL_82;
    }
  }

LABEL_82:
  if (!v76)
  {
  }

  if (v83)
  {
    if (v78)
    {
      goto LABEL_86;
    }
  }

  else
  {

    if (v78)
    {
      goto LABEL_86;
    }
  }

LABEL_86:
  if (v97)
  {
    if (v75)
    {
      goto LABEL_88;
    }
  }

  else
  {

    if (v75)
    {
      goto LABEL_88;
    }
  }

LABEL_88:
  if (!v82)
  {

    if (v77)
    {
      goto LABEL_90;
    }

LABEL_98:

    goto LABEL_90;
  }

  if (!v77)
  {
    goto LABEL_98;
  }

LABEL_90:
  v46 = v45;

  return v45;
}

@end