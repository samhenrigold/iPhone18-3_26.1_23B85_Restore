@interface WolfAirDropNoticeSessionsController
- (void)transferEndedForIdentifier:(id)identifier;
- (void)transferStartedForIdentifier:(id)identifier isFromMe:(id)me withTransferState:(id)state itemCount:(id)count isDestinationDownloads:(id)downloads senderName:(id)name localizedTransferDescription:(id)description previewImageData:(id)self0 contactIdentifier:(id)self1;
- (void)transferUpdatedForIdentifier:(id)identifier withTransferState:(id)state transferAccepted:(id)accepted completedUnitCount:(id)count totalUnitCount:(id)unitCount localizedTransferDescription:(id)description;
@end

@implementation WolfAirDropNoticeSessionsController

- (void)transferStartedForIdentifier:(id)identifier isFromMe:(id)me withTransferState:(id)state itemCount:(id)count isDestinationDownloads:(id)downloads senderName:(id)name localizedTransferDescription:(id)description previewImageData:(id)self0 contactIdentifier:(id)self1
{
  dataCopy = data;
  v63 = sub_100008B98();
  v65 = v18;
  if (name)
  {
    v62 = sub_100008B98();
    v64 = v19;
    if (description)
    {
LABEL_3:
      v20 = sub_100008B98();
      v66 = v21;
      goto LABEL_6;
    }
  }

  else
  {
    v62 = 0;
    v64 = 0;
    if (description)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v66 = 0;
LABEL_6:
  meCopy = me;
  stateCopy = state;
  countCopy = count;
  downloadsCopy = downloads;
  contactIdentifierCopy = contactIdentifier;
  selfCopy = self;
  if (data)
  {
    dataCopy2 = data;
    dataCopy = sub_100008A98();
    v26 = v25;

    if (contactIdentifierCopy)
    {
LABEL_8:
      v27 = sub_100008B98();
      v29 = v28;

      goto LABEL_11;
    }
  }

  else
  {
    v26 = 0xF000000000000000;
    if (contactIdentifierCopy)
    {
      goto LABEL_8;
    }
  }

  v27 = 0;
  v29 = 0;
LABEL_11:
  sub_100003130(v63, v65, meCopy, stateCopy, countCopy, downloadsCopy, v62, v64, v20, v66, dataCopy, v26, v27, v29);
  v29, v30, v31, v32, v33, v34, v35, v36;
  sub_10000856C(dataCopy, v26);

  v65, v37, v38, v39, v40, v41, v42, v43;
  v66, v44, v45, v46, v47, v48, v49, v50;

  v64, v51, v52, v53, v54, v55, v56, v57;
}

- (void)transferUpdatedForIdentifier:(id)identifier withTransferState:(id)state transferAccepted:(id)accepted completedUnitCount:(id)count totalUnitCount:(id)unitCount localizedTransferDescription:(id)description
{
  v14 = sub_100008B98();
  v16 = v15;
  if (description)
  {
    v17 = sub_100008B98();
    description = v18;
  }

  else
  {
    v17 = 0;
  }

  stateCopy = state;
  acceptedCopy = accepted;
  countCopy = count;
  unitCountCopy = unitCount;
  selfCopy = self;
  sub_100004A78(v14, v16, stateCopy, acceptedCopy, countCopy, unitCountCopy, v17, description);

  v16, v24, v25, v26, v27, v28, v29, v30;

  description, v31, v32, v33, v34, v35, v36, v37;
}

- (void)transferEndedForIdentifier:(id)identifier
{
  v4 = sub_100008B98();
  v6 = v5;
  selfCopy = self;
  sub_100004564(v4, v6);

  v6, v8, v9, v10, v11, v12, v13, v14;
}

@end