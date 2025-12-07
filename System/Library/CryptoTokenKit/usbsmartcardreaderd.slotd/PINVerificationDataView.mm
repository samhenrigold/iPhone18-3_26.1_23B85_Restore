@interface PINVerificationDataView
+ (id)createWithInteraction:(id)interaction error:(id *)error;
- (NSString)description;
@end

@implementation PINVerificationDataView

+ (id)createWithInteraction:(id)interaction error:(id *)error
{
  interactionCopy = interaction;
  pINByteOffset = [interactionCopy PINByteOffset];
  if (pINByteOffset)
  {
    v7 = sub_100012974(pINByteOffset);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000178F0(v7);
    }
  }

  v8 = [PINVerificationDataView alloc];
  v9 = [(PINOperationDataView *)v8 initWithLength:qword_10002BF98];
  [(PINOperationDataView *)v9 setBPINOperation:0];
  [interactionCopy initialTimeout];
  [(PINOperationDataView *)v9 setBTimeOut:v10];
  pINFormat = [interactionCopy PINFormat];
  v26 = 0;
  v12 = [pINFormat PINFormatStringWithError:&v26];
  v13 = v26;
  [(PINOperationDataView *)v9 setBmFormatString:v12];

  if (v13)
  {
    if (error)
    {
LABEL_7:
      v14 = v13;
      v15 = 0;
      *error = v13;
      goto LABEL_15;
    }
  }

  else
  {
    pINFormat2 = [interactionCopy PINFormat];
    -[PINOperationDataView setBmPINBlockString:](v9, "setBmPINBlockString:", [pINFormat2 PINBlockString]);

    pINFormat3 = [interactionCopy PINFormat];
    v25 = 0;
    v18 = [pINFormat3 PINLengthFormatWithError:&v25];
    v13 = v25;
    [(PINOperationDataView *)v9 setBmPINLengthFormat:v18];

    if (!v13)
    {
      pINFormat4 = [interactionCopy PINFormat];
      -[PINVerificationDataView setWPINMaxExtraDigit:](v9, "setWPINMaxExtraDigit:", [pINFormat4 PINMaxExtraDigit]);

      -[PINVerificationDataView setBEntryValidationCondition:](v9, "setBEntryValidationCondition:", [interactionCopy PINCompletion]);
      pINMessageIndices = [interactionCopy PINMessageIndices];
      -[PINVerificationDataView setBNumberMessage:](v9, "setBNumberMessage:", [pINMessageIndices count]);

      -[PINVerificationDataView setWLangId:](v9, "setWLangId:", [interactionCopy localeID]);
      pINMessageIndices2 = [interactionCopy PINMessageIndices];
      if ([pINMessageIndices2 count])
      {
        pINMessageIndices3 = [interactionCopy PINMessageIndices];
        v23 = [pINMessageIndices3 objectAtIndexedSubscript:0];
        -[PINVerificationDataView setBMsgIndex:](v9, "setBMsgIndex:", [v23 unsignedCharValue]);
      }

      else
      {
        [(PINVerificationDataView *)v9 setBMsgIndex:0];
      }

      [(PINVerificationDataView *)v9 setNodeAddressByte:0];
      [(PINVerificationDataView *)v9 setProtocolControlByte:0];
      [(PINVerificationDataView *)v9 setLengthByte:0];
      v15 = v9;
      v13 = 0;
      goto LABEL_15;
    }

    if (error)
    {
      goto LABEL_7;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (NSString)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"{ wPINMaxExtraDigit: 0x%.4x ", -[PINVerificationDataView wPINMaxExtraDigit](self, "wPINMaxExtraDigit")];
  [v3 appendFormat:@"bEntryValidationCondition: 0x%.2x ", -[PINVerificationDataView bEntryValidationCondition](self, "bEntryValidationCondition")];
  [v3 appendFormat:@"bNumberMessage: 0x%.2x ", -[PINVerificationDataView bNumberMessage](self, "bNumberMessage")];
  [v3 appendFormat:@"wLangId: 0x%.4x ", -[PINVerificationDataView wLangId](self, "wLangId")];
  [v3 appendFormat:@"bMsgIndex: 0x%.2x ", -[PINVerificationDataView bMsgIndex](self, "bMsgIndex")];
  [v3 appendFormat:@"nodeAddressByte: 0x%.2x ", -[PINVerificationDataView nodeAddressByte](self, "nodeAddressByte")];
  [v3 appendFormat:@"protocolControlByte: 0x%.2x ", -[PINVerificationDataView protocolControlByte](self, "protocolControlByte")];
  [v3 appendFormat:@"lengthByte: 0x%.2x }", -[PINVerificationDataView lengthByte](self, "lengthByte")];

  return v3;
}

@end