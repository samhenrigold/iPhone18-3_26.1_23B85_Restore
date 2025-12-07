@interface _MRGroupSessionMemberSyncMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMembers:(id)members;
- (void)addParticipants:(id)participants;
- (void)addPendingParticipants:(id)participants;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionMemberSyncMessageProtobuf

- (void)addParticipants:(id)participants
{
  participantsCopy = participants;
  participants = self->_participants;
  v8 = participantsCopy;
  if (!participants)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_participants;
    self->_participants = v6;

    participantsCopy = v8;
    participants = self->_participants;
  }

  [(NSMutableArray *)participants addObject:participantsCopy];
}

- (void)addMembers:(id)members
{
  membersCopy = members;
  members = self->_members;
  v8 = membersCopy;
  if (!members)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_members;
    self->_members = v6;

    membersCopy = v8;
    members = self->_members;
  }

  [(NSMutableArray *)members addObject:membersCopy];
}

- (void)addPendingParticipants:(id)participants
{
  participantsCopy = participants;
  pendingParticipants = self->_pendingParticipants;
  v8 = participantsCopy;
  if (!pendingParticipants)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_pendingParticipants;
    self->_pendingParticipants = v6;

    participantsCopy = v8;
    pendingParticipants = self->_pendingParticipants;
  }

  [(NSMutableArray *)pendingParticipants addObject:participantsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionMemberSyncMessageProtobuf;
  v4 = [(_MRGroupSessionMemberSyncMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionMemberSyncMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_participants count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_participants, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = self->_participants;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"participants"];
  }

  if ([(NSMutableArray *)self->_members count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_members, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = self->_members;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"members"];
  }

  if ([(NSMutableArray *)self->_pendingParticipants count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_pendingParticipants, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = self->_pendingParticipants;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v26 + 1) + 8 * k) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation3];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKey:@"pendingParticipants"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_participants;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_members;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_pendingParticipants;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(_MRGroupSessionMemberSyncMessageProtobuf *)self participantsCount])
  {
    [toCopy clearParticipants];
    participantsCount = [(_MRGroupSessionMemberSyncMessageProtobuf *)self participantsCount];
    if (participantsCount)
    {
      v5 = participantsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRGroupSessionMemberSyncMessageProtobuf *)self participantsAtIndex:i];
        [toCopy addParticipants:v7];
      }
    }
  }

  if ([(_MRGroupSessionMemberSyncMessageProtobuf *)self membersCount])
  {
    [toCopy clearMembers];
    membersCount = [(_MRGroupSessionMemberSyncMessageProtobuf *)self membersCount];
    if (membersCount)
    {
      v9 = membersCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(_MRGroupSessionMemberSyncMessageProtobuf *)self membersAtIndex:j];
        [toCopy addMembers:v11];
      }
    }
  }

  if ([(_MRGroupSessionMemberSyncMessageProtobuf *)self pendingParticipantsCount])
  {
    [toCopy clearPendingParticipants];
    pendingParticipantsCount = [(_MRGroupSessionMemberSyncMessageProtobuf *)self pendingParticipantsCount];
    if (pendingParticipantsCount)
    {
      v13 = pendingParticipantsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(_MRGroupSessionMemberSyncMessageProtobuf *)self pendingParticipantsAtIndex:k];
        [toCopy addPendingParticipants:v15];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = self->_participants;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v33 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addParticipants:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_members;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v29 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addMembers:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_pendingParticipants;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v25 + 1) + 8 * v22) copyWithZone:{zone, v25}];
        [v5 addPendingParticipants:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((participants = self->_participants, !(participants | equalCopy[2])) || -[NSMutableArray isEqual:](participants, "isEqual:")) && ((members = self->_members, !(members | equalCopy[1])) || -[NSMutableArray isEqual:](members, "isEqual:")))
  {
    pendingParticipants = self->_pendingParticipants;
    if (pendingParticipants | equalCopy[3])
    {
      v8 = [(NSMutableArray *)pendingParticipants isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_participants hash];
  v4 = [(NSMutableArray *)self->_members hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_pendingParticipants hash];
}

- (void)mergeFrom:(id)from
{
  v35 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_MRGroupSessionMemberSyncMessageProtobuf *)self addParticipants:*(*(&v28 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = fromCopy[1];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(_MRGroupSessionMemberSyncMessageProtobuf *)self addMembers:*(*(&v24 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = fromCopy[3];
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(_MRGroupSessionMemberSyncMessageProtobuf *)self addPendingParticipants:*(*(&v20 + 1) + 8 * v19++), v20];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

@end