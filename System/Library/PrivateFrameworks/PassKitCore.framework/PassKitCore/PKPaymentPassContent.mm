@interface PKPaymentPassContent
- (PKPaymentPassContent)initWithCoder:(id)coder;
- (PKPaymentPassContent)initWithDictionary:(id)dictionary bundle:(id)bundle privateBundle:(id)privateBundle passType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentPassContent

- (PKPaymentPassContent)initWithDictionary:(id)dictionary bundle:(id)bundle privateBundle:(id)privateBundle passType:(unint64_t)type
{
  v162 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v157.receiver = self;
  v157.super_class = PKPaymentPassContent;
  privateBundleCopy = privateBundle;
  v140 = bundleCopy;
  v12 = [PKPassContent initWithDictionary:sel_initWithDictionary_bundle_privateBundle_passType_ bundle:dictionaryCopy privateBundle:bundleCopy passType:?];
  v13 = v12;
  if (v12)
  {
    typeCopy = type;
    [(PKPassContent *)v12 setLogoText:0];
    v14 = [dictionaryCopy PKStringForKey:@"cobrandName"];
    [(PKPaymentPassContent *)v13 setCobrandName:v14];

    v15 = MEMORY[0x1E695DFF8];
    v16 = [dictionaryCopy PKStringForKey:@"transactionServiceURL"];
    v17 = [v15 URLWithString:v16];
    [(PKPaymentPassContent *)v13 setTransactionServiceURL:v17];

    v18 = MEMORY[0x1E695DFF8];
    v19 = [dictionaryCopy PKStringForKey:@"transactionServiceRegistrationURL"];
    v20 = [v18 URLWithString:v19];
    [(PKPaymentPassContent *)v13 setTransactionServiceRegistrationURL:v20];

    v21 = [dictionaryCopy PKStringForKey:@"transactionPushTopic"];
    [(PKPaymentPassContent *)v13 setTransactionPushTopic:v21];

    v22 = MEMORY[0x1E695DFF8];
    v23 = [dictionaryCopy PKStringForKey:@"messageServiceURL"];
    v24 = [v22 URLWithString:v23];
    [(PKPaymentPassContent *)v13 setMessageServiceURL:v24];

    v25 = MEMORY[0x1E695DFF8];
    v26 = [dictionaryCopy PKStringForKey:@"messageServiceRegistrationURL"];
    v27 = [v25 URLWithString:v26];
    [(PKPaymentPassContent *)v13 setMessageServiceRegistrationURL:v27];

    v28 = [dictionaryCopy PKStringForKey:@"messagePushTopic"];
    [(PKPaymentPassContent *)v13 setMessagePushTopic:v28];

    v29 = [dictionaryCopy PKStringForKey:@"appLaunchURLScheme"];
    [(PKPaymentPassContent *)v13 setAppURLScheme:v29];

    v30 = [dictionaryCopy PKStringForKey:@"customerServiceIdentifier"];
    [(PKPaymentPassContent *)v13 setCustomerServiceIdentifier:v30];

    v31 = [dictionaryCopy PKStringForKey:@"shippingAddressSeed"];
    [(PKPaymentPassContent *)v13 setShippingAddressSeed:v31];

    v32 = [dictionaryCopy PKStringForKey:@"speakableCarMake"];
    [(PKPaymentPassContent *)v13 setSpeakableMake:v32];

    v33 = [dictionaryCopy PKStringForKey:@"speakableCarModel"];
    [(PKPaymentPassContent *)v13 setSpeakableModel:v33];

    v34 = [dictionaryCopy PKDictionaryForKey:@"supportedSiriIntents"];
    if (v34)
    {
      v35 = [[PKSiriIntentsConfiguration alloc] initWithDictionary:v34];
      [(PKPaymentPassContent *)v13 setSupportedSiriIntents:v35];
    }

    v128 = v34;
    v130 = v13;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v36 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"paymentApplications"];
    v37 = v36;
    v38 = MEMORY[0x1E695E0F0];
    if (v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = MEMORY[0x1E695E0F0];
    }

    v40 = v39;

    v129 = dictionaryCopy;
    v41 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"auxiliaryPaymentApplications"];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = v38;
    }

    v44 = v43;

    v126 = v44;
    v127 = v40;
    [v40 arrayByAddingObjectsFromArray:v44];
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    obj = v156 = 0u;
    v45 = [obj countByEnumeratingWithState:&v153 objects:v161 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v154;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v154 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v153 + 1) + 8 * i);
          v50 = [v49 PKStringForKey:@"applicationIdentifier"];
          if (v50)
          {
            v51 = [v49 PKDictionaryForKey:@"paymentApplicationStateMessagingOverride"];
            v52 = [v51 PKDictionaryForKey:@"dashboard"];
            if (v52)
            {
              v53 = [[PKPaymentApplicationStateMessageOverride alloc] initWithDictionary:v52 bundle:v140 privateBundle:privateBundleCopy];
              if (v53)
              {
                [dictionary2 setObject:v53 forKey:v50];
              }
            }

            v54 = [v51 PKDictionaryForKey:@"notification"];
            if (v54)
            {
              v55 = [[PKPaymentApplicationStateMessageOverride alloc] initWithDictionary:v54 bundle:v140 privateBundle:privateBundleCopy];
              if (v55)
              {
                [dictionary3 setObject:v55 forKey:v50];
              }
            }

            v56 = [v49 PKStringForKey:@"suspendedReason"];
            v57 = PKLocalizedPassStringForPassBundle(v56, v140, privateBundleCopy);
            if (v57)
            {
              [dictionary setObject:v57 forKey:v50];
            }
          }
        }

        v46 = [obj countByEnumeratingWithState:&v153 objects:v161 count:16];
      }

      while (v46);
    }

    [(PKPaymentPassContent *)v130 setPaymentApplicationStateDashboardMessageOverridesByAID:dictionary2];
    [(PKPaymentPassContent *)v130 setPaymentApplicationStateNotificationMessageOverridesByAID:dictionary3];
    [(PKPaymentPassContent *)v130 setLocalizedSuspendedReasonsByAID:dictionary];
    dictionaryCopy = v129;
    v58 = [v129 PKDictionaryForKey:@"transitCard"];
    v59 = v58;
    if (v58)
    {
      -[PKPaymentPassContent setSupportsTransitOnly:](v130, "setSupportsTransitOnly:", [v58 PKBoolForKey:@"showTransitOnly"]);
    }

    v60 = [PKTransitCommutePlanPackage alloc];
    backFieldBuckets = [(PKPassContent *)v130 backFieldBuckets];
    v62 = [(PKTransitCommutePlanPackage *)v60 initWithDictionary:v129 backFieldBuckets:backFieldBuckets bundle:v140 privateBundle:privateBundleCopy passType:typeCopy];

    transitCommutePlans = [(PKTransitCommutePlanPackage *)v62 transitCommutePlans];
    v64 = [transitCommutePlans copy];
    [(PKPaymentPassContent *)v130 setTransitCommutePlans:v64];

    v135 = v62;
    [(PKPaymentPassContent *)v130 setTransitCommutePlanType:[(PKTransitCommutePlanPackage *)v62 transitCommutePlanType]];
    v65 = [v140 pathForResource:@"actions" ofType:@"strings"];
    v138 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v65];
    [(PKPaymentPassContent *)v130 setActionLocalizations:?];
    bundleURL = [v140 bundleURL];
    v67 = PKPaymentPassActionsDictionaryWithError(bundleURL, 0);

    v125 = v67;
    if (v67 && [v67 count])
    {
      v68 = [v67 objectForKey:@"actionGroups"];
      v69 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v68, "count")}];
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v137 = v68;
      v70 = [v137 countByEnumeratingWithState:&v149 objects:v160 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v150;
        do
        {
          for (j = 0; j != v71; ++j)
          {
            if (*v150 != v72)
            {
              objc_enumerationMutation(v137);
            }

            v74 = [[PKPaymentPassActionGroup alloc] initWithDictionary:*(*(&v149 + 1) + 8 * j) localizations:v138];
            [v69 safelyAddObject:v74];
          }

          v71 = [v137 countByEnumeratingWithState:&v149 objects:v160 count:16];
        }

        while (v71);
      }

      v123 = v59;

      v122 = v69;
      v75 = [v69 copy];
      [(PKPaymentPassContent *)v130 setActionGroups:v75];

      v76 = [v67 objectForKey:@"actions"];
      v77 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v76, "count")}];
      v145 = 0u;
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v136 = v76;
      v78 = [v136 countByEnumeratingWithState:&v145 objects:v159 count:16];
      if (v78)
      {
        v79 = v78;
        v80 = *v146;
        do
        {
          for (k = 0; k != v79; ++k)
          {
            if (*v146 != v80)
            {
              objc_enumerationMutation(v136);
            }

            v82 = [[PKPaymentPassAction alloc] initWithDictionary:*(*(&v145 + 1) + 8 * k) localizations:v138];
            v83 = v82;
            if (v82)
            {
              associatedPlanIdentifier = [(PKPaymentPassAction *)v82 associatedPlanIdentifier];
              v85 = associatedPlanIdentifier;
              if (associatedPlanIdentifier)
              {
                relevantPropertyIdentifier = associatedPlanIdentifier;
              }

              else
              {
                relevantPropertyIdentifier = [(PKPaymentPassAction *)v83 relevantPropertyIdentifier];
              }

              v87 = relevantPropertyIdentifier;

              if (v87)
              {
                v88 = v87;
              }

              else
              {
                v88 = @"commute_plan";
              }

              v89 = v88;

              if (v89)
              {
                v90 = [(PKTransitCommutePlanPackage *)v135 planForIdentifier:v89];
                v91 = [v90 copy];

                if (v91)
                {
                  [(PKPaymentPassAction *)v83 setAssociatedPlanIdentifier:v89];
                  [(PKPaymentPassAction *)v83 setAssociatedPlan:v91];
                }
              }

              [v77 addObject:v83];
            }
          }

          v79 = [v136 countByEnumeratingWithState:&v145 objects:v159 count:16];
        }

        while (v79);
      }

      [(PKPaymentPassContent *)v130 setAvailableActions:v77];
      dictionaryCopy = v129;
      v59 = v123;
    }

    v92 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"passUpgrades"];
    v93 = v92;
    v94 = MEMORY[0x1E695E0F0];
    if (v92)
    {
      v94 = v92;
    }

    v95 = v94;

    v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v97 = v95;
    v98 = [v97 countByEnumeratingWithState:&v141 objects:v158 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v142;
      do
      {
        for (m = 0; m != v99; ++m)
        {
          if (*v142 != v100)
          {
            objc_enumerationMutation(v97);
          }

          v102 = [PKPassUpgradeRequest passUpgradeRequestFromDictionary:*(*(&v141 + 1) + 8 * m)];
          if (v102)
          {
            [v96 addObject:v102];
          }
        }

        v99 = [v97 countByEnumeratingWithState:&v141 objects:v158 count:16];
      }

      while (v99);
    }

    v103 = [v96 copy];
    v13 = v130;
    upgradeRequests = v130->_upgradeRequests;
    v130->_upgradeRequests = v103;

    v105 = [dictionaryCopy PKDictionaryForKey:@"auxiliaryCapabilities"];
    v106 = v105;
    if (v105)
    {
      v107 = v105;
    }

    else
    {
      v107 = [dictionaryCopy PKDictionaryForKey:@"auxiliaryRegistrationRequirements"];
    }

    v108 = v107;

    v109 = [[PKPassAuxiliaryRegistrationRequirements alloc] initWithDictionary:v108];
    auxiliaryRegistrationRequirements = v130->_auxiliaryRegistrationRequirements;
    v130->_auxiliaryRegistrationRequirements = v109;

    v111 = [dictionaryCopy PKDictionaryForKey:@"dynamicLayerConfiguration"];
    if (v111)
    {
      v112 = [[PKDynamicLayerConfiguration alloc] initWithDictionary:v111];
      dynamicLayerConfiguration = v130->_dynamicLayerConfiguration;
      v130->_dynamicLayerConfiguration = v112;
    }

    v114 = [dictionaryCopy PKStringForKey:@"cardType"];
    v115 = PKPaymentCardTypeFromString(v114);

    if (v115 == 4)
    {
      accessReportingType = [dictionaryCopy PKStringForKey:@"cardSubtype"];
      v130->_identityType = PKSecureElementIdentityPassTypeFromString(accessReportingType);
      v116 = v128;
    }

    else
    {
      v116 = v128;
      if (v115 == 3)
      {
        v119 = [dictionaryCopy PKStringForKey:@"cardSubtype"];
        v120 = 432;
        accessReportingType = v130->_accessReportingType;
      }

      else
      {
        if (v115 != 1)
        {
LABEL_84:

          goto LABEL_85;
        }

        accessReportingType = [dictionaryCopy PKStringForKey:@"cardSubtype"];
        v119 = PKSecureElementPaymentPassTypeFromString(accessReportingType, v118);
        v120 = 440;
      }

      *(&v130->super.super.super.isa + v120) = v119;
    }

    goto LABEL_84;
  }

LABEL_85:

  return v13;
}

- (PKPaymentPassContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v84.receiver = self;
  v84.super_class = PKPaymentPassContent;
  v6 = [(PKPassContent *)&v84 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cobrandName"];
    cobrandName = v6->_cobrandName;
    v6->_cobrandName = v7;

    v83 = v5;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionServiceURL"];
    transactionServiceURL = v6->_transactionServiceURL;
    v6->_transactionServiceURL = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionServiceRegistrationURL"];
    transactionServiceRegistrationURL = v6->_transactionServiceRegistrationURL;
    v6->_transactionServiceRegistrationURL = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionPushTopic"];
    transactionPushTopic = v6->_transactionPushTopic;
    v6->_transactionPushTopic = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageServiceURL"];
    messageServiceURL = v6->_messageServiceURL;
    v6->_messageServiceURL = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageServiceRegistrationURL"];
    messageServiceRegistrationURL = v6->_messageServiceRegistrationURL;
    v6->_messageServiceRegistrationURL = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messagePushTopic"];
    messagePushTopic = v6->_messagePushTopic;
    v6->_messagePushTopic = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchURLScheme"];
    appURLScheme = v6->_appURLScheme;
    v6->_appURLScheme = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customerServiceIdentifier"];
    customerServiceIdentifier = v6->_customerServiceIdentifier;
    v6->_customerServiceIdentifier = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shippingAddressSeed"];
    shippingAddressSeed = v6->_shippingAddressSeed;
    v6->_shippingAddressSeed = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speakableCarMake"];
    speakableMake = v6->_speakableMake;
    v6->_speakableMake = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speakableCarModel"];
    speakableModel = v6->_speakableModel;
    v6->_speakableModel = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v82 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v82 forKey:@"dashboard"];
    paymentApplicationStateDashboardMessageOverridesByAID = v6->_paymentApplicationStateDashboardMessageOverridesByAID;
    v6->_paymentApplicationStateDashboardMessageOverridesByAID = v34;

    v36 = [coderCopy decodeObjectOfClasses:v82 forKey:@"notification"];
    paymentApplicationStateNotificationMessageOverridesByAID = v6->_paymentApplicationStateNotificationMessageOverridesByAID;
    v6->_paymentApplicationStateNotificationMessageOverridesByAID = v36;

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v81 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v81 forKey:@"suspendedReason"];
    localizedSuspendedReasonsByAID = v6->_localizedSuspendedReasonsByAID;
    v6->_localizedSuspendedReasonsByAID = v40;

    v6->_supportsTransitOnly = [coderCopy decodeBoolForKey:@"showTransitOnly"];
    v6->_transitCommutePlanType = [coderCopy decodeIntegerForKey:@"commutePlanPassContentType"];
    v42 = MEMORY[0x1E695DFD8];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    v45 = MEMORY[0x1E695DFD8];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"actionLocalizations"];
    actionLocalizations = v6->_actionLocalizations;
    v6->_actionLocalizations = v48;

    v50 = [coderCopy decodeObjectOfClasses:v44 forKey:@"actions"];
    availableActions = v6->_availableActions;
    v6->_availableActions = v50;

    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
    v55 = [coderCopy decodeObjectOfClasses:v54 forKey:@"transitCommutePlans"];
    transitCommutePlans = v6->_transitCommutePlans;
    v6->_transitCommutePlans = v55;

    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
    v60 = [coderCopy decodeObjectOfClasses:v59 forKey:@"actionGroups"];
    actionGroups = v6->_actionGroups;
    v6->_actionGroups = v60;

    v62 = MEMORY[0x1E695DFD8];
    v63 = objc_opt_class();
    v64 = objc_opt_class();
    v65 = objc_opt_class();
    v66 = [v62 setWithObjects:{v63, v64, v65, objc_opt_class(), 0}];
    v67 = [coderCopy decodeObjectOfClasses:v66 forKey:@"passUpgrades"];
    upgradeRequests = v6->_upgradeRequests;
    v6->_upgradeRequests = v67;

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportedSiriIntents"];
    supportedSiriIntents = v6->_supportedSiriIntents;
    v6->_supportedSiriIntents = v69;

    v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auxiliaryRegistrationRequirements"];
    auxiliaryRegistrationRequirements = v6->_auxiliaryRegistrationRequirements;
    v6->_auxiliaryRegistrationRequirements = v71;

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dynamicLayerConfiguration"];
    dynamicLayerConfiguration = v6->_dynamicLayerConfiguration;
    v6->_dynamicLayerConfiguration = v73;

    v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identityType"];
    v6->_identityType = PKSecureElementIdentityPassTypeFromString(v75);

    v76 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessReportingType"];
    accessReportingType = v6->_accessReportingType;
    v6->_accessReportingType = v76;

    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentType"];
    v6->_paymentType = PKSecureElementPaymentPassTypeFromString(v78, v79);

    v5 = v83;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKPaymentPassContent;
  coderCopy = coder;
  [(PKPassContent *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_cobrandName forKey:{@"cobrandName", v7.receiver, v7.super_class}];
  [coderCopy encodeObject:self->_transactionServiceURL forKey:@"transactionServiceURL"];
  [coderCopy encodeObject:self->_transactionServiceRegistrationURL forKey:@"transactionServiceRegistrationURL"];
  [coderCopy encodeObject:self->_transactionPushTopic forKey:@"transactionPushTopic"];
  [coderCopy encodeObject:self->_messageServiceURL forKey:@"messageServiceURL"];
  [coderCopy encodeObject:self->_messageServiceRegistrationURL forKey:@"messageServiceRegistrationURL"];
  [coderCopy encodeObject:self->_messagePushTopic forKey:@"messagePushTopic"];
  [coderCopy encodeObject:self->_appURLScheme forKey:@"appLaunchURLScheme"];
  [coderCopy encodeObject:self->_customerServiceIdentifier forKey:@"customerServiceIdentifier"];
  [coderCopy encodeObject:self->_shippingAddressSeed forKey:@"shippingAddressSeed"];
  [coderCopy encodeObject:self->_speakableMake forKey:@"speakableCarMake"];
  [coderCopy encodeObject:self->_speakableModel forKey:@"speakableCarModel"];
  [coderCopy encodeObject:self->_paymentApplicationStateDashboardMessageOverridesByAID forKey:@"dashboard"];
  [coderCopy encodeObject:self->_paymentApplicationStateNotificationMessageOverridesByAID forKey:@"notification"];
  [coderCopy encodeObject:self->_localizedSuspendedReasonsByAID forKey:@"suspendedReason"];
  [coderCopy encodeBool:self->_supportsTransitOnly forKey:@"showTransitOnly"];
  [coderCopy encodeInteger:self->_transitCommutePlanType forKey:@"commutePlanPassContentType"];
  [coderCopy encodeObject:self->_availableActions forKey:@"actions"];
  [coderCopy encodeObject:self->_actionGroups forKey:@"actionGroups"];
  [coderCopy encodeObject:self->_transitCommutePlans forKey:@"transitCommutePlans"];
  [coderCopy encodeObject:self->_upgradeRequests forKey:@"passUpgrades"];
  [coderCopy encodeObject:self->_actionLocalizations forKey:@"actionLocalizations"];
  [coderCopy encodeObject:self->_auxiliaryRegistrationRequirements forKey:@"auxiliaryRegistrationRequirements"];
  [coderCopy encodeObject:self->_dynamicLayerConfiguration forKey:@"dynamicLayerConfiguration"];
  v5 = PKSecureElementIdentityPassTypeToString(self->_identityType);
  [coderCopy encodeObject:v5 forKey:@"identityType"];

  [coderCopy encodeObject:self->_accessReportingType forKey:@"accessReportingType"];
  v6 = PKSecureElementPaymentPassTypeToString(self->_paymentType);
  [coderCopy encodeObject:v6 forKey:@"paymentType"];

  [coderCopy encodeObject:self->_supportedSiriIntents forKey:@"supportedSiriIntents"];
}

@end