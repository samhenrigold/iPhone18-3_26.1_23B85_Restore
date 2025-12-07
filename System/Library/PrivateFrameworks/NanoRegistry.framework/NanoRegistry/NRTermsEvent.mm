@interface NRTermsEvent
+ (id)digestFromData:(id)data;
+ (id)eventWithProtobuf:(id)protobuf;
+ (id)loadTermsWithPath:(id)path;
+ (id)pathToTermsCache;
+ (id)pathToTermsWithDigest:(uint64_t)digest;
+ (uint64_t)shouldAllowArchivingOfTermsTextToFile;
- (BOOL)isTermsAlreadyArchived;
- (NRTermsEvent)initWithCoder:(id)coder;
- (NRTermsEvent)initWithDeviceID:(id)d;
- (id)description;
- (id)termsText;
- (void)_setEventType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)saveEventTextToFileIfNeeded;
- (void)saveTerms;
- (void)setAcknowledgedDeviceName:(id)name;
- (void)setAcknowledgedDeviceSerialNumber:(id)number;
- (void)setDisplayDeviceName:(id)name;
- (void)setDisplayDeviceSerialNumber:(id)number;
- (void)setDocumentationID:(id)d;
- (void)setEventDate:(double)date;
- (void)setEventType:(int)type;
- (void)setLoggingProcessName:(id)name;
- (void)setPresentationLocation:(int)location;
- (void)setPresentationReason:(id)reason;
- (void)setTermsText:(id)text;
- (void)updateEventDate;
@end

@implementation NRTermsEvent

+ (id)pathToTermsCache
{
  objc_opt_self();
  v2 = MEMORY[0x1E695DFF8];
  v3 = +[NRDataFilePaths pathToNanoRegistryStateDirectory];
  v4 = [v2 fileURLWithPath:v3];

  v5 = [v4 URLByAppendingPathComponent:@"termsCache"];

  return v5;
}

+ (id)pathToTermsWithDigest:(uint64_t)digest
{
  v2 = a2;
  objc_opt_self();
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v4 = [alphanumericCharacterSet mutableCopy];

  [v4 addCharactersInString:@"%."];
  v5 = [v2 stringByAppendingString:@".termsText"];

  v7 = +[NRTermsEvent pathToTermsCache];
  v8 = [v7 URLByAppendingPathComponent:v5];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AB78];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->super._eventDate];
  v6 = [v4 localizedStringFromDate:v5 dateStyle:1 timeStyle:1];
  eventType = self->super._eventType;
  objc_opt_self();
  if ((eventType - 1) > 4)
  {
    v8 = @"Not Set";
  }

  else
  {
    v8 = off_1E86DAD78[eventType - 1];
  }

  v9 = v8;
  termsText = [(NRTermsEvent *)self termsText];
  v11 = [NRTermsEvent digestFromData:termsText];
  v12 = [v3 stringWithFormat:@"NRTermsEvent[%@] %@: digest(%@) docID(%@) process(%@) displayDeviceName(%@) acknowlegedDeviceName(%@) presentationReason(%@)", v6, v9, v11, self->super._documentationID, self->super._loggingProcessName, self->super._displayDeviceName, self->super._acknowledgedDeviceName, self->super._presentationReason];

  return v12;
}

+ (id)digestFromData:(id)data
{
  nRSHA256 = [data NRSHA256];
  v4 = [nRSHA256 base64EncodedStringWithOptions:0];
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];

  return v6;
}

- (BOOL)isTermsAlreadyArchived
{
  v2 = *&self->_flaggedForSend;
  if (!v2)
  {
    return 0;
  }

  v3 = [NRTermsEvent pathToTermsWithDigest:v2];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v3 path];
  v6 = [defaultManager fileExistsAtPath:path];

  return v6;
}

- (id)termsText
{
  termsText = self->super._termsText;
  if (!termsText)
  {
    if ((+[NRTermsEvent shouldAllowArchivingOfTermsTextToFile]& 1) != 0)
    {
      v4 = [NRTermsEvent pathToTermsWithDigest:?];
      v5 = [objc_opt_class() loadTermsWithPath:v4];

      goto LABEL_6;
    }

    termsText = self->super._termsText;
  }

  v5 = termsText;
LABEL_6:

  return v5;
}

+ (uint64_t)shouldAllowArchivingOfTermsTextToFile
{
  objc_opt_self();
  v2 = getpid();
  v4 = NRProcessNameForPID(v2, v3);
  if ([@"nanoregistryd" isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [@"pairtool" isEqualToString:v4];
  }

  return v5;
}

- (void)saveTerms
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([(NRTermsEvent *)self isTermsAlreadyArchived])
  {
    return;
  }

  v18 = *MEMORY[0x1E696A3A0];
  v19[0] = *MEMORY[0x1E696A3A8];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = +[NRTermsEvent pathToTermsCache];
  v17 = 0;
  [defaultManager createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:v3 error:&v17];
  v7 = v17;

  if (v7)
  {
    v12 = v7;
    goto LABEL_10;
  }

  termsText = [(NRTermsEvent *)self termsText];
  if (termsText)
  {
    v9 = [objc_opt_class() digestFromData:termsText];
    v10 = *&self->_flaggedForSend;
    *&self->_flaggedForSend = v9;
  }

  v11 = [NRTermsEvent pathToTermsWithDigest:?];
  v16 = 0;
  [termsText writeToURL:v11 options:1073741825 error:&v16];
  v12 = v16;
  if (v12)
  {
LABEL_10:
    objc_exception_throw(v12);
  }

  path = [v11 path];
  v14 = [termsText matchesDataAtFilePath:path];

  if ((v14 & 1) == 0)
  {
    v15 = [NRTermsAcknowledgementRegistry errorWithEnum:2];
    objc_exception_throw(v15);
  }
}

+ (id)loadTermsWithPath:(id)path
{
  pathCopy = path;
  v8 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:pathCopy options:0 error:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    objc_exception_throw(v5);
  }

  return v4;
}

- (NRTermsEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NRTermsEvent;
  v5 = [(NRTermsEvent *)&v13 initWithCoder:coderCopy];
  v7 = v5;
  if (v5)
  {
    if (!v5->super._termsText && +[NRTermsEvent shouldAllowArchivingOfTermsTextToFile])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsDigest"];
      v9 = *&v7->_flaggedForSend;
      *&v7->_flaggedForSend = v8;
    }

    if ((+[NRTermsEvent shouldAllowArchivingOfTermsTextToFile]& 1) == 0)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsDigest"];

      if (v10)
      {
        v12 = [NRTermsAcknowledgementRegistry errorWithEnum:4];
        objc_exception_throw(v12);
      }
    }
  }

  return v7;
}

+ (id)eventWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_opt_new();
  [v4 setWritable:1];
  [v4 mergeFrom:protobufCopy];

  if ([v4 hasTermsText])
  {
    termsText = [v4 termsText];
    v6 = [NRTermsEvent digestFromData:termsText];
    [v4 setTermsDigest:v6];
  }

  [v4 setWritable:0];

  return v4;
}

- (void)saveEventTextToFileIfNeeded
{
  if (![(NRTermsEvent *)self isTermsAlreadyArchived])
  {
    termsText = [(NRTermsEvent *)self termsText];
    if (!termsText || self->super._eventDate == 0.0)
    {
      v5 = [NRTermsAcknowledgementRegistry errorWithEnum:3];
      objc_exception_throw(v5);
    }

    v4 = termsText;
    if (*&self->_flaggedForSend)
    {
      v6 = termsText;
      termsText = +[NRTermsEvent shouldAllowArchivingOfTermsTextToFile];
      v4 = v6;
      if (termsText)
      {
        termsText = [(NRTermsEvent *)self saveTerms];
        v4 = v6;
      }
    }

    MEMORY[0x1EEE66BB8](termsText, v4);
  }
}

- (NRTermsEvent)initWithDeviceID:(id)d
{
  v52 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [(NRTermsEvent *)self init];
  v6 = v5;
  if (v5)
  {
    *(&v5->super._has + 5) = 1;
    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v8 = [v7 getAllDevicesWithArchivedAltAccountDevicesMatching:&__block_literal_global];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = [v14 valueForProperty:@"pairingID"];
          v16 = [v15 isEqual:dCopy];

          if (v16)
          {
            v17 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_12:

    v18 = [v17 valueForProperty:@"localizedModel"];
    acknowledgedDeviceName = v6->super._acknowledgedDeviceName;
    v6->super._acknowledgedDeviceName = v18;

    v20 = [v17 valueForProperty:@"serialNumber"];
    acknowledgedDeviceSerialNumber = v6->super._acknowledgedDeviceSerialNumber;
    v6->super._acknowledgedDeviceSerialNumber = v20;

    v22 = MGCopyAnswer();
    displayDeviceName = v6->super._displayDeviceName;
    v6->super._displayDeviceName = v22;

    v24 = MGCopyAnswer();
    displayDeviceSerialNumber = v6->super._displayDeviceSerialNumber;
    v6->super._displayDeviceSerialNumber = v24;

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v38.receiver = v6;
    v38.super_class = NRTermsEvent;
    [(NRPBTermsEvent *)&v38 setEventDate:?];
    v26 = getpid();
    v28 = NRProcessNameForPID(v26, v27);
    loggingProcessName = v6->super._loggingProcessName;
    v6->super._loggingProcessName = v28;

    if (dCopy && (!v6->super._acknowledgedDeviceName || !v6->super._acknowledgedDeviceSerialNumber || !v6->super._displayDeviceName || !v6->super._displayDeviceSerialNumber))
    {
      v30 = nr_daemon_log();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

      if (v31)
      {
        v32 = nr_daemon_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v6->super._acknowledgedDeviceName;
          v34 = v6->super._acknowledgedDeviceSerialNumber;
          v35 = v6->super._displayDeviceName;
          v36 = v6->super._displayDeviceSerialNumber;
          *buf = 138413058;
          v44 = v33;
          v45 = 2112;
          v46 = v34;
          v47 = 2112;
          v48 = v35;
          v49 = 2112;
          v50 = v36;
          _os_log_impl(&dword_1E0ADF000, v32, OS_LOG_TYPE_DEFAULT, "_acknowledgedDeviceName: %@ _acknowledgedDeviceSerialNumber: %@ _displayDeviceName:%@ _displayDeviceSerialNumber:%@", buf, 0x2Au);
        }
      }
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v13 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (!self->super._acknowledgedDeviceName || !self->super._acknowledgedDeviceSerialNumber || !self->super._displayDeviceName || !self->super._displayDeviceSerialNumber)
  {
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [NRTermsAcknowledgementRegistry errorWithEnum:3];
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_DEFAULT, "Terms saved with missing device info.  This is not fatal: %@", buf, 0xCu);
      }
    }
  }

  v9 = *&self->_flaggedForSend;
  if (v9)
  {
    [coderCopy encodeObject:v9 forKey:@"termsDigest"];
  }

  v10.receiver = self;
  v10.super_class = NRTermsEvent;
  [(NRTermsEvent *)&v10 encodeWithCoder:coderCopy];
}

- (void)setEventType:(int)type
{
  if (*(&self->super._has + 5) != 1)
  {
    v3 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v3);
  }

  v4.receiver = self;
  v4.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v4 setEventType:*&type];
}

- (void)_setEventType:(unint64_t)type
{
  v3.receiver = self;
  v3.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v3 setEventType:type];
}

- (void)setTermsText:(id)text
{
  textCopy = text;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = textCopy;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setTermsText:textCopy];
}

- (void)setDocumentationID:(id)d
{
  dCopy = d;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = dCopy;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setDocumentationID:dCopy];
}

- (void)setPresentationReason:(id)reason
{
  reasonCopy = reason;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = reasonCopy;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setPresentationReason:reasonCopy];
}

- (void)setPresentationLocation:(int)location
{
  if (*(&self->super._has + 5) != 1)
  {
    v3 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v3);
  }

  v4.receiver = self;
  v4.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v4 setPresentationLocation:*&location];
}

- (void)setAcknowledgedDeviceName:(id)name
{
  nameCopy = name;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = nameCopy;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setAcknowledgedDeviceName:nameCopy];
}

- (void)setAcknowledgedDeviceSerialNumber:(id)number
{
  numberCopy = number;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = numberCopy;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setAcknowledgedDeviceSerialNumber:numberCopy];
}

- (void)setDisplayDeviceName:(id)name
{
  nameCopy = name;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = nameCopy;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setDisplayDeviceName:nameCopy];
}

- (void)setDisplayDeviceSerialNumber:(id)number
{
  numberCopy = number;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = numberCopy;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setDisplayDeviceSerialNumber:numberCopy];
}

- (void)setEventDate:(double)date
{
  if (*(&self->super._has + 5) != 1)
  {
    date = [NRTermsAcknowledgementRegistry errorWithEnum:5, date];
    objc_exception_throw(date);
  }

  v4.receiver = self;
  v4.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v4 setEventDate:date];
}

- (void)updateEventDate
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3.receiver = self;
  v3.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v3 setEventDate:?];
}

- (void)setLoggingProcessName:(id)name
{
  nameCopy = name;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = nameCopy;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setLoggingProcessName:nameCopy];
}

@end