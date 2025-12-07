@interface RPPerson
- (RPPerson)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (unsigned)_updateDeviceDerivedInfo;
- (unsigned)removeRPDevice:(id)device;
- (unsigned)updateWithRPDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RPPerson

- (RPPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = RPPerson;
  v5 = [(RPPerson *)&v19 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v20 = 0;
  if (NSDecodeSInt64RangedIfPresent())
  {
    v5->_activityLevel = v20;
  }

  v6 = coderCopy;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  objc_opt_class();
  NSDecodeNSArrayOfClassIfPresent();
  v20 = 0;
  if (NSDecodeSInt64RangedIfPresent())
  {
    v5->_flags = v20;
  }

  v7 = v6;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  if (!v5->_identifier)
  {
    v16 = RPErrorF(4294960591, "Decode person with no identifier", v8, v9, v10, v11, v12, v13, v18);
    [v7 failWithError:v16];

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v14 = v7;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v20 = 0;
  if (NSDecodeSInt64RangedIfPresent())
  {
    v5->_proximity = v20;
  }

  objc_opt_class();
  NSDecodeObjectIfPresent();
  v15 = v5;
LABEL_12:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityLevel = self->_activityLevel;
  v13 = coderCopy;
  if (activityLevel)
  {
    [coderCopy encodeInteger:activityLevel forKey:@"al"];
    coderCopy = v13;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v13 encodeObject:contactID forKey:@"cnid"];
    coderCopy = v13;
  }

  devices = self->_devices;
  if (devices)
  {
    [v13 encodeObject:devices forKey:@"dv"];
    coderCopy = v13;
  }

  flags = self->_flags;
  if (flags)
  {
    [v13 encodeInt64:flags forKey:@"fl"];
    coderCopy = v13;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v13 encodeObject:identifier forKey:@"id"];
    coderCopy = v13;
  }

  name = self->_name;
  if (name)
  {
    [v13 encodeObject:name forKey:@"nm"];
    coderCopy = v13;
  }

  proximity = self->_proximity;
  if (proximity)
  {
    [v13 encodeInteger:proximity forKey:@"px"];
    coderCopy = v13;
  }

  relativeLocation = self->_relativeLocation;
  if (relativeLocation)
  {
    [v13 encodeObject:relativeLocation forKey:@"rl"];
    coderCopy = v13;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v62 = *MEMORY[0x1E69E9840];
  if (level <= 49)
  {
    v5 = 100;
  }

  else
  {
    v5 = 8;
  }

  v60 = 0;
  NSAppendPrintF(&v60, "RPPerson ID %{mask}", self->_identifier);
  v6 = v60;
  v7 = v6;
  flags = self->_flags;
  if (flags)
  {
    v59 = v6;
    NSAppendPrintF(&v59, ", Fl %#{flags}", flags, &unk_1B6F2E74A);
    v9 = v59;

    v7 = v9;
  }

  name = self->_name;
  if (name)
  {
    v58 = v7;
    v11 = name;
    NSAppendPrintF(&v58, ", Nm '%@'", v11);
    v12 = v58;

    v7 = v12;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    v57 = v7;
    v14 = contactID;
    NSAppendPrintF(&v57, ", CNID '%.*@'", v5, v14);
    v15 = v57;

    v7 = v15;
  }

  proximity = self->_proximity;
  if (proximity)
  {
    v56 = v7;
    switch(proximity)
    {
      case 10:
        v17 = "Immed";
        break;
      case 30:
        v17 = "Far";
        break;
      case 20:
        v17 = "Near";
        break;
      default:
        v17 = "?";
        break;
    }

    NSAppendPrintF(&v56, ", Px %s", v17);
    v18 = v56;

    v7 = v18;
  }

  relativeLocation = self->_relativeLocation;
  if (relativeLocation)
  {
    v55 = v7;
    v20 = relativeLocation;
    NSAppendPrintF(&v55, ", RL %@", v20);
    v21 = v55;

    v7 = v21;
  }

  activityLevel = self->_activityLevel;
  if (activityLevel)
  {
    v54 = v7;
    if (activityLevel > 0xE)
    {
      v23 = "?";
    }

    else
    {
      v23 = off_1E7C94C38[activityLevel - 1];
    }

    NSAppendPrintF(&v54, ", AcLv %s", v23);
    v24 = v54;

    v7 = v24;
  }

  v25 = self->_devices;
  v26 = v25;
  if (v25)
  {
    v27 = [(NSArray *)v25 count];
    v28 = v27;
    if (level > 49)
    {
      v46 = v7;
      NSAppendPrintF(&v46, ", %d device(s)", v27);
      v43 = v46;
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v29 = v26;
      v30 = [(NSArray *)v29 countByEnumeratingWithState:&v50 objects:v61 count:16];
      if (!v30)
      {
LABEL_44:

        goto LABEL_45;
      }

      v31 = v30;
      v45 = v26;
      v32 = 0;
      v33 = 1;
      v34 = v28;
      v35 = *v51;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v51 != v35)
          {
            objc_enumerationMutation(v29);
          }

          v37 = *(*(&v50 + 1) + 8 * i);
          if (v33)
          {
            v49 = v7;
            NSAppendPrintF(&v49, ", %d device(s) <", v34);
            v38 = v49;

            v7 = v38;
          }

          name = [v37 name];
          v40 = name;
          if (name)
          {
            v48 = v7;
            v41 = ", ";
            if (!v32)
            {
              v41 = "";
            }

            NSAppendPrintF(&v48, "%s'%@'", v41, name);
            v42 = v48;

            ++v32;
            v7 = v42;
          }

          v33 = 0;
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v50 objects:v61 count:16];
        v33 = 0;
      }

      while (v31);

      v47 = v7;
      NSAppendPrintF(&v47, ">");
      v43 = v47;
      v26 = v45;
    }

    v29 = v7;
    v7 = v43;
    goto LABEL_44;
  }

LABEL_45:

  return v7;
}

- (unsigned)removeRPDevice:(id)device
{
  identifier = [device identifier];
  v5 = [(NSMutableDictionary *)self->_deviceDict objectForKeyedSubscript:identifier];

  if (v5)
  {
    [(NSMutableDictionary *)self->_deviceDict setObject:0 forKeyedSubscript:identifier];
    allValues = [(NSMutableDictionary *)self->_deviceDict allValues];
    devices = self->_devices;
    self->_devices = allValues;

    v8 = [(RPPerson *)self _updateDeviceDerivedInfo]| 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)updateWithRPDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  v6 = [(NSMutableDictionary *)self->_deviceDict objectForKeyedSubscript:identifier];
  deviceDict = self->_deviceDict;
  if (!deviceDict)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_deviceDict;
    self->_deviceDict = v8;

    deviceDict = self->_deviceDict;
  }

  [(NSMutableDictionary *)deviceDict setObject:deviceCopy forKeyedSubscript:identifier];
  allValues = [(NSMutableDictionary *)self->_deviceDict allValues];
  devices = self->_devices;
  self->_devices = allValues;

  v12 = [(RPPerson *)self _updateDeviceDerivedInfo]| (2 * (v6 == 0));
  return v12;
}

- (unsigned)_updateDeviceDerivedInfo
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  flags = self->_flags;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  deviceDict = self->_deviceDict;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__RPPerson__updateDeviceDerivedInfo__block_invoke;
  v11[3] = &unk_1E7C94C18;
  v11[4] = self;
  v11[5] = &v20;
  v11[6] = &v24;
  v11[7] = &v16;
  v11[8] = &v12;
  [(NSMutableDictionary *)deviceDict enumerateKeysAndObjectsUsingBlock:v11];
  v5 = *(v21 + 6);
  v6 = v25;
  if (v5 != self->_activityLevel)
  {
    self->_activityLevel = v5;
    *(v6 + 6) |= 1u;
  }

  v7 = *(v17 + 6);
  if (v7 != flags)
  {
    self->_flags = v7;
    *(v6 + 6) |= 1u;
  }

  v8 = *(v13 + 6);
  if (v8 == self->_proximity)
  {
    v9 = *(v6 + 6);
  }

  else
  {
    self->_proximity = v8;
    v9 = *(v6 + 6) | 4;
    *(v6 + 6) = v9;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v9;
}

void __36__RPPerson__updateDeviceDerivedInfo__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 activityLevel];
  v5 = *(a1[5] + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
  }

  if (!*(a1[4] + 24))
  {
    v6 = [v11 contactID];
    if (v6)
    {
      objc_storeStrong((a1[4] + 24), v6);
      *(*(a1[6] + 8) + 24) |= 1u;
    }
  }

  v7 = [v11 flags];
  if ((v7 & 8) != 0)
  {
    *(*(a1[7] + 8) + 24) |= 8u;
    if ((v7 & 0x10) == 0)
    {
LABEL_9:
      if ((v7 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  *(*(a1[7] + 8) + 24) |= 0x10u;
  if ((v7 & 4) == 0)
  {
LABEL_10:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(*(a1[7] + 8) + 24) |= 4u;
  if ((v7 & 0x20) == 0)
  {
LABEL_11:
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(*(a1[7] + 8) + 24) |= 0x20u;
  if ((v7 & 1) == 0)
  {
LABEL_12:
    if ((v7 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(*(a1[7] + 8) + 24) |= 1u;
  if ((v7 & 2) == 0)
  {
LABEL_13:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(*(a1[7] + 8) + 24) |= 2u;
  if ((v7 & 0x40) == 0)
  {
LABEL_14:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    *(*(a1[7] + 8) + 24) |= 0x80u;
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
  *(*(a1[7] + 8) + 24) |= 0x40u;
  if ((v7 & 0x80) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v7 & 0x1000) != 0)
  {
LABEL_16:
    *(*(a1[7] + 8) + 24) |= 0x100u;
  }

LABEL_17:
  v8 = [v11 proximity];
  if (v8)
  {
    v9 = *(a1[8] + 8);
    v10 = *(v9 + 24);
    if (!v10 || v8 < v10)
    {
      *(v9 + 24) = v8;
    }
  }
}

@end