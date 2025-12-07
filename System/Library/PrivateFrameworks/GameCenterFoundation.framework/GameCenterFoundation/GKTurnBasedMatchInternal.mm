@interface GKTurnBasedMatchInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (int64_t)activeExchangeCount;
- (int64_t)localPlayerParticipantIndex;
- (int64_t)previousParticipantIndex;
- (unint64_t)hash;
- (unsigned)state;
- (void)state;
@end

@implementation GKTurnBasedMatchInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_28 != -1)
  {
    +[GKTurnBasedMatchInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_28;

  return v3;
}

void __51__GKTurnBasedMatchInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v19[23] = *MEMORY[0x277D85DE8];
  v18[0] = @"matchID";
  v19[0] = objc_opt_class();
  v18[1] = @"status";
  v19[1] = objc_opt_class();
  v18[2] = @"creationDate";
  v19[2] = objc_opt_class();
  v18[3] = @"currentPlayer";
  v19[3] = objc_opt_class();
  v18[4] = @"lastTurnDate";
  v19[4] = objc_opt_class();
  v18[5] = @"message";
  v19[5] = objc_opt_class();
  v18[6] = @"localizableMessage";
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
  v19[6] = v7;
  v18[7] = @"reason";
  v19[7] = objc_opt_class();
  v18[8] = @"minPlayers";
  v19[8] = objc_opt_class();
  v18[9] = @"maxPlayers";
  v19[9] = objc_opt_class();
  v18[10] = @"deletionDate";
  v19[10] = objc_opt_class();
  v18[11] = @"currentParticipant";
  v19[11] = objc_opt_class();
  v18[12] = @"turnNumber";
  v19[12] = objc_opt_class();
  v18[13] = @"lastTurnPlayerID";
  v19[13] = objc_opt_class();
  v18[14] = @"matchData";
  v19[14] = objc_opt_class();
  v18[15] = @"participants";
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v19[15] = v11;
  v18[16] = @"matchDataVersion";
  v19[16] = objc_opt_class();
  v18[17] = @"bundleID";
  v19[17] = objc_opt_class();
  v18[18] = @"bundleVersion";
  v19[18] = objc_opt_class();
  v18[19] = @"shortBundleVersion";
  v19[19] = objc_opt_class();
  v18[20] = @"platform";
  v19[20] = objc_opt_class();
  v18[21] = @"exchanges";
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  v19[21] = v15;
  v18[22] = @"game";
  v19[22] = objc_opt_class();
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:23];

  v17 = secureCodedPropertyKeys_sSecureCodedKeys_28;
  secureCodedPropertyKeys_sSecureCodedKeys_28 = v16;
}

- (unint64_t)hash
{
  matchID = [(GKTurnBasedMatchInternal *)self matchID];
  v3 = [matchID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    lastTurnDate = [(GKTurnBasedMatchInternal *)self lastTurnDate];
    lastTurnDate2 = [v5 lastTurnDate];
    matchID = [(GKTurnBasedMatchInternal *)self matchID];
    matchID2 = [v5 matchID];
    if ([matchID isEqualToString:matchID2] && (lastTurnDate == lastTurnDate2 || objc_msgSend(lastTurnDate, "isEqualToDate:", lastTurnDate2)))
    {
      status = [(GKTurnBasedMatchInternal *)self status];
      status2 = [v5 status];
      v12 = [status isEqualToString:status2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)localPlayerParticipantIndex
{
  participants = [(GKTurnBasedMatchInternal *)self participants];
  v3 = [participants indexOfObjectPassingTest:&__block_literal_global_82_0];

  return v3;
}

uint64_t __55__GKTurnBasedMatchInternal_localPlayerParticipantIndex__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 player];
  v3 = [v2 isLocalPlayer];

  return v3;
}

- (int64_t)previousParticipantIndex
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  participants = [(GKTurnBasedMatchInternal *)self participants];
  v4 = [participants countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(participants);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        lastTurnDate = [v9 lastTurnDate];

        if (lastTurnDate)
        {
          if (!v6 || ([v9 lastTurnDate], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "lastTurnDate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "compare:", v12), v12, v11, v13 == 1))
          {
            v14 = v9;

            v6 = v14;
          }
        }
      }

      v5 = [participants countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  participants2 = [(GKTurnBasedMatchInternal *)self participants];
  v16 = [participants2 indexOfObject:v6];

  return v16;
}

- (int64_t)activeExchangeCount
{
  v39 = *MEMORY[0x277D85DE8];
  status = [(GKTurnBasedMatchInternal *)self status];
  v4 = [status isEqualToString:@"Active"];

  if (!v4)
  {
    return 0;
  }

  localPlayerParticipantIndex = [(GKTurnBasedMatchInternal *)self localPlayerParticipantIndex];
  [(GKTurnBasedMatchInternal *)self exchanges];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v34;
    v10 = @"A";
    do
    {
      v11 = 0;
      v27 = v7;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        statusString = [v12 statusString];
        v14 = [statusString isEqualToString:v10];

        if (v14)
        {
          v15 = localPlayerParticipantIndex == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          replies = [v12 replies];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v17 = [replies countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = v9;
            v20 = v8;
            v21 = v10;
            v22 = 0;
            v23 = *v30;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v30 != v23)
                {
                  objc_enumerationMutation(replies);
                }

                v22 |= localPlayerParticipantIndex == [*(*(&v29 + 1) + 8 * i) recipientIndex];
              }

              v18 = [replies countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v18);
            v25 = (v22 & 1) == 0;
            v10 = v21;
            v8 = v20;
            v9 = v19;
            v7 = v27;
          }

          else
          {
            v25 = 1;
          }

          v8 += v25;
        }

        ++v11;
      }

      while (v11 != v7);
      v7 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)state
{
  state = self->_state;
  if (!state)
  {
    if ([(GKTurnBasedMatchInternal *)self activeExchangeCount]> 0)
    {
      state = 2;
LABEL_38:
      self->_state = state;
      return state;
    }

    status = [(GKTurnBasedMatchInternal *)self status];
    if ([status isEqualToString:@"Active"])
    {
    }

    else
    {
      status2 = [(GKTurnBasedMatchInternal *)self status];
      v6 = [status2 isEqualToString:@"Matching"];

      if (!v6)
      {
        status3 = [(GKTurnBasedMatchInternal *)self status];
        v31 = [status3 isEqualToString:@"Complete"];

        if (v31)
        {
          state = 5;
        }

        else
        {
          v32 = os_log_GKGeneral;
          if (!os_log_GKGeneral)
          {
            v33 = GKOSLoggers();
            v32 = os_log_GKGeneral;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [(GKTurnBasedMatchInternal *)v32 state];
          }

          state = 3;
        }

        goto LABEL_38;
      }
    }

    currentParticipant = [(GKTurnBasedMatchInternal *)self currentParticipant];
    if (currentParticipant < 0 || (v8 = currentParticipant, -[GKTurnBasedMatchInternal participants](self, "participants"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10 <= v8))
    {
      v12 = 0;
    }

    else
    {
      participants = [(GKTurnBasedMatchInternal *)self participants];
      v12 = [participants objectAtIndexedSubscript:v8];
    }

    localPlayerParticipantIndex = [(GKTurnBasedMatchInternal *)self localPlayerParticipantIndex];
    if (localPlayerParticipantIndex < 0 || (v14 = localPlayerParticipantIndex, -[GKTurnBasedMatchInternal participants](self, "participants"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 count], v15, v14 >= v16))
    {
      v18 = 0;
    }

    else
    {
      participants2 = [(GKTurnBasedMatchInternal *)self participants];
      v18 = [participants2 objectAtIndexedSubscript:v14];

      if (v18)
      {
        status4 = [v18 status];
        v20 = [status4 isEqualToString:@"Inactive"];

        if (v20)
        {
          state = 5;
LABEL_37:

          goto LABEL_38;
        }
      }
    }

    player = [v12 player];
    if ([player isGuestPlayer])
    {
      player2 = [v12 player];
      hostPlayerInternal = [player2 hostPlayerInternal];
      isLocalPlayer = [hostPlayerInternal isLocalPlayer];

      if (isLocalPlayer)
      {
        state = 6;
        goto LABEL_37;
      }
    }

    else
    {
    }

    player3 = [v12 player];
    isLocalPlayer2 = [player3 isLocalPlayer];

    if (isLocalPlayer2)
    {
      status5 = [v12 status];
      v28 = [status5 isEqualToString:@"Invited"];

      if (v28)
      {
        state = 1;
      }

      else
      {
        state = 3;
      }
    }

    else
    {
      participants3 = [(GKTurnBasedMatchInternal *)self participants];
      if ([participants3 count])
      {

        state = 4;
      }

      else
      {
        player4 = [v12 player];
        isLocalPlayer3 = [player4 isLocalPlayer];

        if (isLocalPlayer3)
        {
          state = 3;
        }

        else
        {
          state = 4;
        }
      }
    }

    goto LABEL_37;
  }

  return state;
}

- (void)state
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  status = [a2 status];
  v5 = 138412290;
  v6 = status;
  _os_log_debug_impl(&dword_227904000, selfCopy, OS_LOG_TYPE_DEBUG, "GKTurnBasedMatchInternal->state Unexpected match status encountered: %@", &v5, 0xCu);
}

@end