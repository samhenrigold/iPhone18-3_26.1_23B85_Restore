@interface HMRemoteEventRouterProtoServerDiagnosticInfo
- (BOOL)isEqual:(id)equal;
- (id)connectionStateAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)modeAsString:(int)string;
- (int)StringAsConnectionState:(id)state;
- (int)StringAsMode:(id)mode;
- (int)connectionState;
- (int)mode;
- (unint64_t)hash;
- (void)addConnectedClients:(id)clients;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConnectionState:(BOOL)state;
- (void)setHasMode:(BOOL)mode;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HMRemoteEventRouterProtoServerDiagnosticInfo

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 40);
  if ((v6 & 2) != 0)
  {
    self->_version = *(fromCopy + 2);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 40);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(fromCopy + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_mode = *(fromCopy + 9);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  self->_connectionState = *(fromCopy + 8);
  *&self->_has |= 4u;
  if (*(fromCopy + 40))
  {
LABEL_5:
    self->_lastConnected = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self addConnectedClients:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761u * self->_version;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_mode;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_12:
      v14 = 0;
      return v9 ^ v8 ^ v10 ^ v14 ^ [(NSMutableArray *)self->_connectedClients hash:v3];
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = 2654435761 * self->_connectionState;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  lastConnected = self->_lastConnected;
  if (lastConnected < 0.0)
  {
    lastConnected = -lastConnected;
  }

  *v6.i64 = floor(lastConnected + 0.5);
  v12 = (lastConnected - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v7, v6).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

  return v9 ^ v8 ^ v10 ^ v14 ^ [(NSMutableArray *)self->_connectedClients hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_version != *(equalCopy + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_24:
    v6 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_mode != *(equalCopy + 9))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_connectionState != *(equalCopy + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_lastConnected != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_24;
  }

  connectedClients = self->_connectedClients;
  if (connectedClients | *(equalCopy + 3))
  {
    v6 = [(NSMutableArray *)connectedClients isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_25:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_version;
    *(v5 + 40) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 36) = self->_mode;
  *(v5 + 40) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  *(v5 + 32) = self->_connectionState;
  *(v5 + 40) |= 4u;
  if (*&self->_has)
  {
LABEL_5:
    *(v5 + 8) = self->_lastConnected;
    *(v5 + 40) |= 1u;
  }

LABEL_6:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_connectedClients;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{zone, v15}];
        [v6 addConnectedClients:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_version;
    *(toCopy + 40) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      *(toCopy + 8) = self->_connectionState;
      *(toCopy + 40) |= 4u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 9) = self->_mode;
  *(toCopy + 40) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    toCopy[1] = *&self->_lastConnected;
    *(toCopy + 40) |= 1u;
  }

LABEL_6:
  v10 = toCopy;
  if ([(HMRemoteEventRouterProtoServerDiagnosticInfo *)self connectedClientsCount])
  {
    [v10 clearConnectedClients];
    connectedClientsCount = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self connectedClientsCount];
    if (connectedClientsCount)
    {
      v7 = connectedClientsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self connectedClientsAtIndex:i];
        [v10 addConnectedClients:v9];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_5:
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_connectedClients;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_version];
    [dictionary setObject:v14 forKey:@"version"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  mode = self->_mode;
  if (mode >= 3)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_mode];
  }

  else
  {
    v16 = off_1E754B9D0[mode];
  }

  [dictionary setObject:v16 forKey:@"mode"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  connectionState = self->_connectionState;
  if (connectionState >= 3)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_connectionState];
  }

  else
  {
    v18 = off_1E754B9E8[connectionState];
  }

  [dictionary setObject:v18 forKey:@"connectionState"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastConnected];
    [dictionary setObject:v5 forKey:@"lastConnected"];
  }

LABEL_6:
  if ([(NSMutableArray *)self->_connectedClients count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_connectedClients, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_connectedClients;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"connectedClients"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMRemoteEventRouterProtoServerDiagnosticInfo;
  v4 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)&v8 description];
  dictionaryRepresentation = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addConnectedClients:(id)clients
{
  clientsCopy = clients;
  connectedClients = self->_connectedClients;
  v8 = clientsCopy;
  if (!connectedClients)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_connectedClients;
    self->_connectedClients = v6;

    clientsCopy = v8;
    connectedClients = self->_connectedClients;
  }

  [(NSMutableArray *)connectedClients addObject:clientsCopy];
}

- (int)StringAsConnectionState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"Connected"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"Disconnected"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)connectionStateAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E754B9E8[string];
  }

  return v4;
}

- (void)setHasConnectionState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)connectionState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_connectionState;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Primary"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Resident"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)modeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E754B9D0[string];
  }

  return v4;
}

- (void)setHasMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)mode
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_mode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end