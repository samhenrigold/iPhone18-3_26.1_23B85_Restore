@interface SGTicketEventSchemaCreator
- (BOOL)checkCompletenessOfSchema:(id)schema;
- (BOOL)reservationIDPresentInEventSchema:(id)schema;
- (id)processDURawEvent:(id)event;
@end

@implementation SGTicketEventSchemaCreator

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
  v5 = [schemaCopy objectForKeyedSubscript:@"reservationId"];
  v6 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v7 = [v6 objectForKeyedSubscript:@"name"];

  v8 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];

  v9 = [v8 objectForKeyedSubscript:@"startDate"];

  v10 = [v4 isEqualToString:@"http://schema.org/ReservationCancelled"];
  if (v7)
  {
    null = [MEMORY[0x277CBEB68] null];
    v12 = v7 != null;

    if (v9)
    {
LABEL_3:
      null2 = [MEMORY[0x277CBEB68] null];
      v14 = v9 != null2;

      v15 = v14 && v12;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  if (v10)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

- (id)processDURawEvent:(id)event
{
  v110[11] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v81 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D064B8]];
  v74 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066B8]];
  v80 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D067B0]];
  v79 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066A8]];
  v78 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066A0]];
  v77 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066C8]];
  v4 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06770]];
  v76 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065B0]];
  v82 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06798]];
  v5 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065F8]];
  v70 = v5;
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    capitalizedString = [v6 capitalizedString];
    v75 = [v7 initWithFormat:@"http://schema.org/Reservation%@", capitalizedString];
  }

  else
  {
    v75 = 0;
  }

  v9 = [eventCopy objectForKeyedSubscript:@"EventSubType"];
  v72 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06578]];
  v73 = v4;
  v10 = [SGEventSchemaCreator isTimePresentInDURawDateTime:v4];
  v11 = &unk_284749A70;
  if (v10)
  {
    v11 = &unk_284749A58;
  }

  v71 = v11;
  v69 = v9;
  if ([v9 isEqualToString:@"movie"])
  {
    v109[0] = @"@context";
    v109[1] = @"@type";
    v110[0] = @"http://schema.org";
    v110[1] = @"http://schema.org/EventReservation";
    null = v74;
    v109[2] = @"reservationId";
    if (!v74)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v68 = null;
    v110[2] = null;
    v109[3] = @"reservationStatus";
    null2 = v75;
    if (!v75)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v60 = null2;
    v110[3] = null2;
    v109[4] = @"underName";
    v108[0] = @"http://schema.org/Person";
    null3 = v80;
    v107[0] = @"@type";
    v107[1] = @"name";
    if (!v80)
    {
      null3 = [MEMORY[0x277CBEB68] null];
    }

    v58 = null3;
    v108[1] = null3;
    v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];
    v110[4] = v66;
    v109[5] = @"reservationFor";
    v106[0] = @"http://schema.org/ScreeningEvent";
    v105[0] = @"@type";
    v105[1] = @"name";
    null4 = v79;
    if (!v79)
    {
      null4 = [MEMORY[0x277CBEB68] null];
    }

    v56 = null4;
    v106[1] = null4;
    v105[2] = @"startDate";
    null5 = v4;
    if (!v4)
    {
      null5 = [MEMORY[0x277CBEB68] null];
    }

    v54 = null5;
    v106[2] = null5;
    v105[3] = @"endDate";
    null6 = v76;
    if (!v76)
    {
      null6 = [MEMORY[0x277CBEB68] null];
    }

    v52 = null6;
    v106[3] = null6;
    v105[4] = @"location";
    v104[0] = @"http://schema.org/Place";
    null7 = v78;
    v103[0] = @"@type";
    v103[1] = @"address";
    if (!v78)
    {
      null7 = [MEMORY[0x277CBEB68] null];
    }

    v50 = null7;
    v104[1] = null7;
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];
    v106[4] = v64;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:5];
    v109[6] = @"reservedTicket";
    v102[0] = @"http://schema.org/Ticket";
    v101[0] = @"@type";
    v101[1] = @"ticketedSeat";
    v100[0] = @"http://schema.org/Seat";
    v99[0] = @"@type";
    v99[1] = @"seatNumber";
    null8 = v77;
    v62 = v19;
    v110[5] = v19;
    if (!v77)
    {
      null8 = [MEMORY[0x277CBEB68] null];
    }

    v100[1] = null8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];
    v102[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
    v110[6] = v22;
    v109[7] = @"totalPrice";
    null9 = v82;
    if (!v82)
    {
      null9 = [MEMORY[0x277CBEB68] null];
    }

    v110[7] = null9;
    v109[8] = @"broker";
    v98[0] = @"http://schema.org/Organization";
    v97[0] = @"@type";
    v97[1] = @"name";
    null10 = v81;
    if (!v81)
    {
      null10 = [MEMORY[0x277CBEB68] null];
    }

    v98[1] = null10;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
    v110[8] = v25;
    v109[9] = @"DetailedEventStatus";
    null11 = v72;
    if (!v72)
    {
      null11 = [MEMORY[0x277CBEB68] null];
    }

    v109[10] = @"startTimeIsUnknown";
    v110[9] = null11;
    v110[10] = v71;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:11];
    if (!v72)
    {
    }

    if (!v81)
    {
    }

    if (!v82)
    {
    }

    if (!v77)
    {
    }

    v28 = v74;
    if (!v78)
    {
    }

    v30 = v72;
    v29 = v73;
    if (v76)
    {
      if (v73)
      {
        goto LABEL_41;
      }
    }

    else
    {

      if (v73)
      {
        goto LABEL_41;
      }
    }

LABEL_41:
    if (!v79)
    {
    }

    if (!v80)
    {
    }

    if (!v75)
    {
      v31 = v60;
LABEL_91:

      goto LABEL_92;
    }

    goto LABEL_92;
  }

  v95[0] = @"@context";
  v95[1] = @"@type";
  v96[0] = @"http://schema.org";
  v96[1] = @"http://schema.org/EventReservation";
  null12 = v74;
  v95[2] = @"reservationId";
  if (!v74)
  {
    null12 = [MEMORY[0x277CBEB68] null];
  }

  v68 = null12;
  v96[2] = null12;
  v95[3] = @"reservationStatus";
  null13 = v75;
  if (!v75)
  {
    null13 = [MEMORY[0x277CBEB68] null];
  }

  v63 = null13;
  v96[3] = null13;
  v95[4] = @"totalPrice";
  null14 = v82;
  if (!v82)
  {
    null14 = [MEMORY[0x277CBEB68] null];
  }

  v61 = null14;
  v96[4] = null14;
  v95[5] = @"underName";
  v93[1] = @"name";
  v94[0] = @"http://schema.org/Person";
  null15 = v80;
  v93[0] = @"@type";
  if (!v80)
  {
    null15 = [MEMORY[0x277CBEB68] null];
  }

  v59 = null15;
  v94[1] = null15;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
  v96[5] = v67;
  v95[6] = @"reservationFor";
  v92[0] = @"http://schema.org/Event";
  v91[0] = @"@type";
  v91[1] = @"name";
  null16 = v79;
  if (!v79)
  {
    null16 = [MEMORY[0x277CBEB68] null];
  }

  v57 = null16;
  v92[1] = null16;
  v91[2] = @"startDate";
  null17 = v4;
  if (!v4)
  {
    null17 = [MEMORY[0x277CBEB68] null];
  }

  v55 = null17;
  v92[2] = null17;
  v91[3] = @"endDate";
  null18 = v76;
  if (!v76)
  {
    null18 = [MEMORY[0x277CBEB68] null];
  }

  v53 = null18;
  v92[3] = null18;
  v91[4] = @"totalPrice";
  null19 = v82;
  if (!v82)
  {
    null19 = [MEMORY[0x277CBEB68] null];
  }

  v51 = null19;
  v92[4] = null19;
  v91[5] = @"location";
  null20 = v78;
  v89[0] = @"@type";
  v89[1] = @"address";
  v90[0] = @"http://schema.org/Place";
  if (!v78)
  {
    null20 = [MEMORY[0x277CBEB68] null];
  }

  v49 = null20;
  v90[1] = null20;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  v92[5] = v65;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:6];
  v95[7] = @"reservedTicket";
  v87[1] = @"ticketedSeat";
  v88[0] = @"http://schema.org/Ticket";
  v87[0] = @"@type";
  v85[0] = @"@type";
  v85[1] = @"seatNumber";
  v86[0] = @"http://schema.org/Seat";
  null21 = v77;
  v96[6] = v41;
  if (!v77)
  {
    null21 = [MEMORY[0x277CBEB68] null];
  }

  v86[1] = null21;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v88[1] = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
  v96[7] = v44;
  v95[8] = @"broker";
  v83[1] = @"name";
  v84[0] = @"http://schema.org/Organization";
  v83[0] = @"@type";
  null22 = v81;
  if (!v81)
  {
    null22 = [MEMORY[0x277CBEB68] null];
  }

  v84[1] = null22;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  v96[8] = v46;
  v95[9] = @"DetailedEventStatus";
  null23 = v72;
  if (!v72)
  {
    null23 = [MEMORY[0x277CBEB68] null];
  }

  v95[10] = @"startTimeIsUnknown";
  v96[9] = null23;
  v96[10] = v71;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:11];
  if (!v72)
  {
  }

  if (!v81)
  {
  }

  if (!v77)
  {
  }

  if (!v78)
  {
  }

  v29 = v73;
  v28 = v74;
  v30 = v72;
  if (!v82)
  {
  }

  if (v76)
  {
    if (v73)
    {
      goto LABEL_83;
    }
  }

  else
  {

    if (v73)
    {
      goto LABEL_83;
    }
  }

LABEL_83:
  if (!v79)
  {
  }

  if (!v80)
  {
  }

  if (!v82)
  {
  }

  if (!v75)
  {
    v31 = v63;
    goto LABEL_91;
  }

LABEL_92:
  if (!v28)
  {
  }

  return v27;
}

@end