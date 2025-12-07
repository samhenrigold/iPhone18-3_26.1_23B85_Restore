@interface DAResolveRecipientsRequest
- (BOOL)isEqual:(id)equal;
- (DAResolveRecipientsRequest)initWithEmailAddresses:(id)addresses;
- (DAResolveRecipientsRequest)initWithEmailAddresses:(id)addresses retrieveCertificates:(BOOL)certificates retrieveAvailability:(BOOL)availability withStartTime:(id)time endTime:(id)endTime;
- (id)description;
- (unint64_t)hash;
@end

@implementation DAResolveRecipientsRequest

- (DAResolveRecipientsRequest)initWithEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  v8.receiver = self;
  v8.super_class = DAResolveRecipientsRequest;
  v5 = [(DAResolveRecipientsRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DAResolveRecipientsRequest *)v5 setEmailAddresses:addressesCopy];
    [(DAResolveRecipientsRequest *)v6 setRetrieveCertificates:1];
    [(DAResolveRecipientsRequest *)v6 setRetrieveAvailablilty:0];
    [(DAResolveRecipientsRequest *)v6 setStartTime:0];
    [(DAResolveRecipientsRequest *)v6 setEndTime:0];
  }

  return v6;
}

- (DAResolveRecipientsRequest)initWithEmailAddresses:(id)addresses retrieveCertificates:(BOOL)certificates retrieveAvailability:(BOOL)availability withStartTime:(id)time endTime:(id)endTime
{
  availabilityCopy = availability;
  certificatesCopy = certificates;
  addressesCopy = addresses;
  timeCopy = time;
  endTimeCopy = endTime;
  v18.receiver = self;
  v18.super_class = DAResolveRecipientsRequest;
  v15 = [(DAResolveRecipientsRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(DAResolveRecipientsRequest *)v15 setEmailAddresses:addressesCopy];
    [(DAResolveRecipientsRequest *)v16 setRetrieveCertificates:certificatesCopy];
    [(DAResolveRecipientsRequest *)v16 setRetrieveAvailablilty:availabilityCopy];
    [(DAResolveRecipientsRequest *)v16 setStartTime:timeCopy];
    [(DAResolveRecipientsRequest *)v16 setEndTime:endTimeCopy];
  }

  return v16;
}

- (unint64_t)hash
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  emailAddresses = [(DAResolveRecipientsRequest *)self emailAddresses];
  v3 = [emailAddresses countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) hash];
      }

      v4 = [emailAddresses countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    emailAddresses = [(DAResolveRecipientsRequest *)self emailAddresses];
    emailAddresses2 = [v5 emailAddresses];

    v8 = [emailAddresses isEqual:emailAddresses2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DAResolveRecipientsRequest;
  v4 = [(DAResolveRecipientsRequest *)&v8 description];
  emailAddresses = [(DAResolveRecipientsRequest *)self emailAddresses];
  v6 = [v3 stringWithFormat:@"%@ emailAddresses %@", v4, emailAddresses];

  return v6;
}

@end