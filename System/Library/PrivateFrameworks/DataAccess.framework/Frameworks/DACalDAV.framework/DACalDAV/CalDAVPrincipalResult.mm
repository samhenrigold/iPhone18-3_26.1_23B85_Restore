@interface CalDAVPrincipalResult
+ (id)resultFromResponse:(id)response;
- (CalDAVPrincipalResult)init;
- (CalDAVPrincipalResult)initWithResponse:(id)response;
- (NSString)emailAddress;
- (NSString)preferredCUAddress;
- (id)convertToDAContactSearchResultElement;
- (id)description;
- (void)addCUAddress:(id)address;
- (void)addEmail:(id)email;
@end

@implementation CalDAVPrincipalResult

- (id)convertToDAContactSearchResultElement
{
  v3 = objc_opt_new();
  firstName = [(CalDAVPrincipalResult *)self firstName];
  [v3 setFirstName:firstName];

  lastName = [(CalDAVPrincipalResult *)self lastName];
  [v3 setLastName:lastName];

  displayName = [(CalDAVPrincipalResult *)self displayName];
  [v3 setDisplayName:displayName];

  emailAddress = [(CalDAVPrincipalResult *)self emailAddress];
  [v3 setEmailAddress:emailAddress];

  principalPath = [(CalDAVPrincipalResult *)self principalPath];
  [v3 setPrincipalPath:principalPath];

  preferredCUAddress = [(CalDAVPrincipalResult *)self preferredCUAddress];
  [v3 setPreferredUserAddress:preferredCUAddress];

  cuAddresses = [(CalDAVPrincipalResult *)self cuAddresses];
  [v3 setCuAddresses:cuAddresses];

  preferredUserAddress = [v3 preferredUserAddress];
  [v3 setIdentifierOnServer:preferredUserAddress];

  return v3;
}

- (CalDAVPrincipalResult)init
{
  v7.receiver = self;
  v7.super_class = CalDAVPrincipalResult;
  v2 = [(CalDAVPrincipalResult *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(CalDAVPrincipalResult *)v2 setFirstName:0];
    [(CalDAVPrincipalResult *)v3 setLastName:0];
    [(CalDAVPrincipalResult *)v3 setDisplayName:0];
    [(CalDAVPrincipalResult *)v3 setResultType:CalDAVPrincipalResultType_Unknown];
    [(CalDAVPrincipalResult *)v3 setPrincipalPath:0];
    v4 = objc_opt_new();
    [(CalDAVPrincipalResult *)v3 setMCUAddresses:v4];

    v5 = objc_opt_new();
    [(CalDAVPrincipalResult *)v3 setMEmailAddresses:v5];
  }

  return v3;
}

- (CalDAVPrincipalResult)initWithResponse:(id)response
{
  v67 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [(CalDAVPrincipalResult *)self init];
  if (!v5)
  {
    goto LABEL_30;
  }

  successfulPropertiesToValues = [responseCopy successfulPropertiesToValues];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __42__CalDAVPrincipalResult_initWithResponse___block_invoke;
  v63[3] = &unk_278F17E80;
  v7 = successfulPropertiesToValues;
  v64 = v7;
  v8 = MEMORY[0x24C1D0520](v63);
  v9 = [v7 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDFC0]];
  href = [v9 href];
  v11 = href;
  v53 = v9;
  if (href)
  {
    firstHref = href;
  }

  else
  {
    firstHref = [responseCopy firstHref];
  }

  v13 = firstHref;

  v52 = v13;
  payloadAsOriginalURL = [v13 payloadAsOriginalURL];
  da_pathWithoutTrailingRemovingSlash = [payloadAsOriginalURL da_pathWithoutTrailingRemovingSlash];
  [(CalDAVPrincipalResult *)v5 setPrincipalPath:da_pathWithoutTrailingRemovingSlash];

  v16 = v8[2](v8, 1);
  payloadAsString = [v16 payloadAsString];
  [(CalDAVPrincipalResult *)v5 setFirstName:payloadAsString];

  v18 = v8[2](v8, 2);
  payloadAsString2 = [v18 payloadAsString];
  [(CalDAVPrincipalResult *)v5 setLastName:payloadAsString2];

  v20 = v8[2](v8, 3);
  payloadAsString3 = [v20 payloadAsString];
  [(CalDAVPrincipalResult *)v5 setDisplayName:payloadAsString3];

  v22 = v8[2](v8, 5);
  payloadAsString4 = [v22 payloadAsString];
  da_trimWhiteSpace = [payloadAsString4 da_trimWhiteSpace];

  v25 = v8[2](v8, 7);
  payloadAsString5 = [v25 payloadAsString];
  da_trimWhiteSpace2 = [payloadAsString5 da_trimWhiteSpace];

  [(CalDAVPrincipalResult *)v5 setResultType:CalDAVPrincipalResultType_Unknown];
  if (da_trimWhiteSpace)
  {
    [(CalDAVPrincipalResult *)v5 setResultType:da_trimWhiteSpace];
  }

  else if (da_trimWhiteSpace2)
  {
    v28 = [MEMORY[0x277CF7020] resultTypeForRecordType:da_trimWhiteSpace2];
    [(CalDAVPrincipalResult *)v5 setResultType:v28];
  }

  v51 = da_trimWhiteSpace2;
  v29 = v8[2](v8, 4);
  objc_opt_class();
  v54 = v7;
  if (objc_opt_isKindOfClass())
  {
    v50 = responseCopy;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    emailAddresses = [v29 emailAddresses];
    v31 = [emailAddresses countByEnumeratingWithState:&v59 objects:v66 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v60;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v60 != v33)
          {
            objc_enumerationMutation(emailAddresses);
          }

          payloadAsString6 = [*(*(&v59 + 1) + 8 * i) payloadAsString];
          [(CalDAVPrincipalResult *)v5 addEmail:payloadAsString6];
        }

        v32 = [emailAddresses countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v32);
    }

    responseCopy = v50;
    v7 = v54;
  }

  v36 = v8[2](v8, 6);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = responseCopy;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    hrefs = [v36 hrefs];
    v39 = [hrefs countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v56;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v56 != v41)
          {
            objc_enumerationMutation(hrefs);
          }

          payloadAsString7 = [*(*(&v55 + 1) + 8 * j) payloadAsString];
          [(CalDAVPrincipalResult *)v5 addCUAddress:payloadAsString7];
        }

        v40 = [hrefs countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v40);
    }

    responseCopy = v37;
    v44 = v53;
    v7 = v54;
    v45 = v52;
  }

  else
  {
    v45 = v13;
    v44 = v53;
    if (v36)
    {
      v46 = objc_opt_class();
      NSLog(&cfstr_UnexpectedPars.isa, v46);
    }
  }

  principalPath = [(CalDAVPrincipalResult *)v5 principalPath];

  if (!principalPath)
  {
    v48 = 0;
  }

  else
  {
LABEL_30:
    v48 = v5;
  }

  return v48;
}

id __42__CalDAVPrincipalResult_initWithResponse___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CF7020] namespaceAndNameForWellKnownType:a2];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

  return v4;
}

+ (id)resultFromResponse:(id)response
{
  responseCopy = response;
  v4 = [[CalDAVPrincipalResult alloc] initWithResponse:responseCopy];

  return v4;
}

- (void)addCUAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    mCUAddresses = [(CalDAVPrincipalResult *)self mCUAddresses];
    [mCUAddresses addObject:addressCopy];
  }
}

- (void)addEmail:(id)email
{
  emailCopy = email;
  if ([emailCopy length])
  {
    mEmailAddresses = [(CalDAVPrincipalResult *)self mEmailAddresses];
    [mEmailAddresses addObject:emailCopy];
  }
}

- (NSString)preferredCUAddress
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  cuAddresses = [(CalDAVPrincipalResult *)self cuAddresses];
  v4 = [cuAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    cuAddresses2 = 0;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(cuAddresses);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      if (!cuAddresses2)
      {
        if ([*(*(&v13 + 1) + 8 * v8) da_hasPrefixCaseInsensitive:@"urn:uuid:"])
        {
          cuAddresses2 = v9;
        }

        else
        {
          cuAddresses2 = 0;
        }
      }

      if ([v9 da_hasPrefixCaseInsensitive:@"mailto:"])
      {
        break;
      }

      if (v5 == ++v8)
      {
        v5 = [cuAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    principalPath = v9;

    if (principalPath)
    {
      goto LABEL_22;
    }

    if (!cuAddresses2)
    {
LABEL_19:
      cuAddresses2 = [(CalDAVPrincipalResult *)self cuAddresses];
      if ([cuAddresses2 count])
      {
        cuAddresses3 = [(CalDAVPrincipalResult *)self cuAddresses];
        principalPath = [cuAddresses3 objectAtIndexedSubscript:0];
      }

      else
      {
        principalPath = [(CalDAVPrincipalResult *)self principalPath];
      }

LABEL_22:

      cuAddresses2 = principalPath;
    }
  }

  else
  {
    cuAddresses2 = 0;
LABEL_18:

    if (!cuAddresses2)
    {
      goto LABEL_19;
    }
  }

  return cuAddresses2;
}

- (NSString)emailAddress
{
  v21 = *MEMORY[0x277D85DE8];
  emailAddresses = [(CalDAVPrincipalResult *)self emailAddresses];
  v4 = [emailAddresses count];

  if (v4)
  {
    emailAddresses2 = [(CalDAVPrincipalResult *)self emailAddresses];
    stringRemovingMailto = [emailAddresses2 objectAtIndexedSubscript:0];
LABEL_3:
    v7 = stringRemovingMailto;
  }

  else
  {
    cuAddresses = [(CalDAVPrincipalResult *)self cuAddresses];
    v9 = [cuAddresses count];

    if (v9)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      emailAddresses2 = [(CalDAVPrincipalResult *)self cuAddresses];
      v10 = [emailAddresses2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(emailAddresses2);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            if ([v14 hasMailto])
            {
              stringRemovingMailto = [v14 stringRemovingMailto];
              goto LABEL_3;
            }
          }

          v11 = [emailAddresses2 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  displayName = [(CalDAVPrincipalResult *)self displayName];
  emailAddress = [(CalDAVPrincipalResult *)self emailAddress];
  if (emailAddress)
  {
    [(CalDAVPrincipalResult *)self emailAddress];
  }

  else
  {
    [(CalDAVPrincipalResult *)self preferredCUAddress];
  }
  v6 = ;
  resultType = [(CalDAVPrincipalResult *)self resultType];
  v8 = [v3 stringWithFormat:@"%@ <%@> (%@)", displayName, v6, resultType];

  return v8;
}

@end