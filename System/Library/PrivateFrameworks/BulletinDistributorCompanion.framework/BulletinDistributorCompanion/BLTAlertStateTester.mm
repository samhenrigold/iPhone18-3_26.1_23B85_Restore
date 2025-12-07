@interface BLTAlertStateTester
- (BOOL)isScreenTimeBlockedForBundleIdentifier:(id)identifier ignoresDowntime:(BOOL)downtime;
- (unint64_t)willNanoPresentNotificationForSectionInfo:(id)info subsectionIDs:(id)ds isWristDetectDisabled:(BOOL)disabled hasSectionIDOptedOutOfCoordination:(BOOL)coordination hasSectionIDOptedForwardOnly:(BOOL)only ignoresDowntime:(BOOL)downtime isCritical:(BOOL)critical;
@end

@implementation BLTAlertStateTester

- (unint64_t)willNanoPresentNotificationForSectionInfo:(id)info subsectionIDs:(id)ds isWristDetectDisabled:(BOOL)disabled hasSectionIDOptedOutOfCoordination:(BOOL)coordination hasSectionIDOptedForwardOnly:(BOOL)only ignoresDowntime:(BOOL)downtime isCritical:(BOOL)critical
{
  downtimeCopy = downtime;
  onlyCopy = only;
  coordinationCopy = coordination;
  disabledCopy = disabled;
  v60 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dsCopy = ds;
  sectionID = [infoCopy sectionID];
  LODWORD(downtimeCopy) = [(BLTAlertStateTester *)self isScreenTimeBlockedForBundleIdentifier:sectionID ignoresDowntime:downtimeCopy];

  v18 = 512;
  if (!downtimeCopy)
  {
    v18 = 0;
  }

  if (disabledCopy)
  {
    v18 |= 0x80uLL;
  }

  if (coordinationCopy)
  {
    v18 |= 0x40uLL;
  }

  if (onlyCopy)
  {
    v19 = v18 | 0x100;
  }

  else
  {
    v19 = v18;
  }

  subsections = [infoCopy subsections];
  v48 = dsCopy;
  if ([dsCopy count] && objc_msgSend(subsections, "count"))
  {
    v46 = v19;
    v47 = infoCopy;
    selfCopy = self;
    [(BLTAlertStateTester *)self setTestCheckedSubsections:1];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v45 = subsections;
    v22 = subsections;
    v23 = [v22 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = 0;
      v27 = *v50;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v50 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v49 + 1) + 8 * i);
          subsectionID = [v29 subsectionID];
          v31 = [v48 containsObject:subsectionID];

          if (v31)
          {
            v32 = [(BLTAlertStateTester *)selfCopy _blockingReasonForSectionInfo:v29 isCritical:critical];
            if (!v32)
            {
              goto LABEL_38;
            }

            v26 = v32;
            v25 |= v32;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v24);

      if (v26)
      {
        v33 = v25 | v46;
        infoCopy = v47;
LABEL_40:
        subsections = v45;
        goto LABEL_41;
      }
    }

    else
    {
LABEL_38:
    }

    v33 = v46;
    infoCopy = v47;
    goto LABEL_40;
  }

  [(BLTAlertStateTester *)self setTestCheckedSubsections:0];
  if ([dsCopy count] && !objc_msgSend(subsections, "count"))
  {
    v34 = blt_general_log(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      sectionID2 = [infoCopy sectionID];
      *buf = 138412802;
      v55 = sectionID2;
      v56 = 2112;
      v57 = dsCopy;
      v58 = 2112;
      v59 = infoCopy;
      _os_log_impl(&dword_241FB3000, v34, OS_LOG_TYPE_DEFAULT, "Checking if notification with subsections will present in sectionInfo that has no subsections! Falling back to checking against sectionInfo. sectionID:%@ subsectionIDs:%@ sectionInfo:%@", buf, 0x20u);
    }
  }

  factorySectionID = [infoCopy factorySectionID];
  if (!factorySectionID || ![infoCopy suppressFromSettings])
  {
    goto LABEL_36;
  }

  sectionInfoRetriever = [(BLTAlertStateTester *)self sectionInfoRetriever];

  if (sectionInfoRetriever)
  {
    sectionInfoRetriever2 = [(BLTAlertStateTester *)self sectionInfoRetriever];
    factorySectionID2 = [infoCopy factorySectionID];
    factorySectionID = (sectionInfoRetriever2)[2](sectionInfoRetriever2, factorySectionID2);

    if (factorySectionID)
    {
      v41 = blt_general_log(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        sectionID3 = [infoCopy sectionID];
        factorySectionID3 = [infoCopy factorySectionID];
        *buf = 138412546;
        v55 = sectionID3;
        v56 = 2112;
        v57 = factorySectionID3;
        _os_log_impl(&dword_241FB3000, v41, OS_LOG_TYPE_DEFAULT, "Section settings for %@ overridden by factory section %@", buf, 0x16u);
      }

      factorySectionID = factorySectionID;
      infoCopy = factorySectionID;
    }

LABEL_36:
  }

  v33 = [(BLTAlertStateTester *)self _blockingReasonForSectionInfo:infoCopy isCritical:critical]| v19;
LABEL_41:

  return v33;
}

- (BOOL)isScreenTimeBlockedForBundleIdentifier:(id)identifier ignoresDowntime:(BOOL)downtime
{
  downtimeCopy = downtime;
  identifierCopy = identifier;
  v6 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:identifierCopy];
  deviceManagementPolicy = [v6 deviceManagementPolicy];
  if (deviceManagementPolicy)
  {
    v8 = !downtimeCopy;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v9 = deviceManagementPolicy;
    v10 = [objc_alloc(MEMORY[0x277D04BF0]) initWithPolicyChangeHandler:0];
    v18 = 0;
    v11 = [v10 requestPoliciesByBundleIdentifierWithError:&v18];
    v12 = v11;
    if (v18)
    {
      v13 = 0;
    }

    else
    {
      v15 = [v11 objectForKey:identifierCopy];
      unsignedIntegerValue = [v15 unsignedIntegerValue];

      v13 = unsignedIntegerValue != 0;
    }

    v14 = (v9 != 0 || v13) && !downtimeCopy;
  }

  return v14;
}

@end